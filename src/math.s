;---------------------------------------
; math.s - Implementations for math.i
;---------------------------------------
; Created:  October  11th, 2022  9:21 PM
; Modified: November 13th, 2022  4:24 PM
;---------------------------------------

; !!! IMPORTANT FOR MAINTAINERS !!!
; Since there is heavy use of helper
; functions and x86 jmp instructions
; can encode 2-byte opcodes for small
; jumps, the code is ordered by size.
; The smaller functions are placed closer
; to the helpers while the biggers ones
; are placed further away.
; 
; What this means is the functions are
; ordered from smallest to biggest, and
; up to 127 bytes worth of functions are
; placed above the helpers with the rest
; below in order to maximize the use of
; these 2-byte opcodes.  If not done this
; way, many of the jmp instructions will
; be encoded with 5 bytes, wasting 3 bytes
; per jmp.
; 
; In addition, once the functions become
; too heavy, a 'extension' function
; function will be made which redirects
; to the original function but allows further
; use of the 2-byte jmp instructions.
; 
; Some functions may appear to violate the
; above ordering rules.  This is because
; they either don't jump at the end, or
; they jump to different code, which is
; ordered differently to increase efficiency.
; 
; Currently, the code is ordered as follows:
; sqrt   - 5 bytes
; pow    - 35 bytes
; fmod   - 15 bytes
; modf   - 13 bytes
; exp    - 13 bytes
; log    - 4 bytes
; atan2  - 9 bytes
; floor  - 9 bytes
; fabs   - 9 bytes 
; ------------------
; log10  - 4 bytes
; sin    - 9 bytes
; cos    - 9 bytes
; tan    - 9 bytes
; atan   - 11 bytes
; asin   - 21 bytes
; acos   - 29 bytes
; 
; Every possible byte is used for the top
; without introducing 5 byte jmps, and there
; is room at the bottom without needing an
; extender function.

   section .text
   global sqrt
sqrt:
   sqrtsd   xmm0,xmm0
   ret
;sqrt

   section .text
   global pow
pow:
   ; x^y = 2^floor(xlog2(y))*2^{xlog2(y)}
   call  _fpu_push2_sd
   fxch
   .after_load:
   fyl2x
   
   ; x^y = 2^floor(ST(0))*2^{ST(0)}
   fld1
   fld   st1
   fprem
   fsub  st2,st0

   ; x^y = 2^ST(2)*2^ST(0)
   f2xm1
   faddp
   fxch

   ; x^y = 2^ST(0)*ST(2)
   fld1
   fscale
   fadd  st0,st1
   fsubrp

   ; x^y = ST(0)*ST(1)
   fmulp
   jmp   _fpu_pop_sd
;pow

   section .text
   global fmod
fmod:
   call  _fpu_push2_sd
   fxch
   fprem
   fadd  st0,st1
   fsubrp
   jmp   _fpu_pop_sd
;fmod

   section .text
   global modf
modf:
   call  _fpu_whole_frac_sd
   fxch
   fsub  st0,st1
   fstp  qword [rdi]
   jmp   _fpu_pop_sd
;modf

   section .text
   global exp
exp:
   call     _fpu_push_sd
   fldl2e
   fmulp
   fld1
   fadd     st0,st0
   jmp      pow.after_load
;exp

   section .text
   global log
log:
   fldln2
   jmp   _fpu_log2_sd
;log


   section .text
   global atan2
atan2:
   call     _fpu_push2_sd
   fpatan
   jmp      _fpu_pop_sd
;atan2

   section .text
   global floor
floor:
   call  _fpu_whole_frac_sd
   fsubp
   jmp   _fpu_pop_sd
;floor

   section .text
   global fabs
fabs:
   call  _fpu_push_sd
   fabs
   jmp   _fpu_pop_sd
;fabs

;------------------------------------------------------------------------------

; Contained in here are helpers
; for reusing common code and
; allowing SIMD to work in tandem
; with x87 FPU instructions.

; Most of these are ridiculous and
; shouldn't even be something that
; has to be done manually. ARM assembly
; is much better to work with than
; this nonsense.

   section .text
   ; Input     - Multiplier      | ST(0)
   ; Input     - Antilogarithm   | xmm0
   ; Output    - Result          | xmm0
   ; Clobbers  - FPU stack       | Pop ST(0-1), xmm0
_fpu_log2_sd:
   call  _fpu_push_sd
   fyl2x
   jmp   _fpu_pop_sd
;_fpu_log2_sd

   section .text
   ; Input     - Number    | xmm0
   ; Output    - Frac      | ST(0)
   ; Output    - Whole     | ST(1)
   ; Clobbers  - FPU stack | ST(0-1)
_fpu_whole_frac_sd:
   call  _fpu_push_sd
   fld1
   fld   st1
   fprem
   fadd  st0,st1
   fsubrp
   ret
;_fpu_whole_frac_sd

   section .text
   ; Input     - 64-bit float | xmm0[0]
   ; Output    - none
   ; Clobbers  - FPU stack    | Push ST(0)
_fpu_push_sd:
   sub   rsp,0x08
   movsd qword [rsp],xmm0
   fld   qword [rsp]
   add   rsp,0x08
   ret
;_fpu_push_sd

   section .text
   ; Input     - 64-bit float | xmm0 -> ST(1)
   ; Input     - 64-bit float | xmm0 -> ST(0)
   ; Output    - none
   ; Clobbers  - FPU stack    | Push ST(0-1)
   ; Clobbers  - SSE regs     | Overwrite xmm0
_fpu_push2_sd:
   call     _fpu_push_sd
   movapd   xmm0,xmm1
   jmp      _fpu_push_sd
;_fpu_push2_sd

   section .text
   ; Input     - none
   ; Output    - 64-bit float | xmm0[0]
   ; Clobbers  - FPU stack    | Pop ST(0)
_fpu_pop_sd:
   sub   rsp,0x08
   fstp  qword [rsp]
   movsd xmm0,qword [rsp]
   add   rsp,0x08
   ret
;_fpu_pop_sd

;------------------------------------------------------------------------------

   section .text
   global log10
log10:
   fldlg2
   jmp   _fpu_log2_sd
;log10

   section .text
   global sin
sin:
   call  _fpu_push_sd
   fsin
   jmp   _fpu_pop_sd
;sin

   section .text
   global cos
cos:
   call  _fpu_push_sd
   fcos
   jmp   _fpu_pop_sd
;cos

   section .text
   global tan
tan:
   call  _fpu_push_sd
   fptan
   jmp   _fpu_pop_sd
;tan

   section .text
   global atan
atan:
   call  _fpu_push_sd
   fld1
   fpatan
   jmp   _fpu_pop_sd
;atan

   section .text
   global asin
asin:
   ; asin(x) = atan(x/sqrt(1-x^2))
   call  _fpu_push_sd
   fld1
   fld   st1
   fld   st0
   fmulp
   fsubp
   fsqrt
   fpatan
   jmp   _fpu_pop_sd
;asin

   section .text
   global acos
acos:
   .PI_2    equ 0x3FF921FB54442D18
   ; acos(x) = pi/2 - asin(x)
   call     asin
   mov      rax,.PI_2
   movq     xmm1,rax
   subsd    xmm1,xmm0
   movsd    xmm0,xmm1
   ret
;acos

