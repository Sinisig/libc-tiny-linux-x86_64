;---------------------------------------
; math.i - Various math functions
;---------------------------------------
; Created:  October  11th, 2022  8:00 PM
; Modified: November 14th, 2022 10:44 AM
;---------------------------------------

%ifndef __LIBC_TINY_MATH_I
%define __LIBC_TINY_MATH_I
;-------------------------

HUGE_VAL equ 0x7FF8000000000000 ; +NaN

extern floor
extern ceil    ; !!
extern fabs
extern fmod
extern modf

extern sqrt

extern exp
extern frexp   ; !!
extern ldexp   ; !!
extern pow
extern log
extern log10

extern sin
extern cos
extern tan

extern asin
extern acos
extern atan
extern atan2

extern sinh    ; !!
extern cosh    ; !!
extern tanh    ; !!

;-------------------------
%endif ;__LIBC_TINY_MATH_I

