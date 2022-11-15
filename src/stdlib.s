;---------------------------------------
; stdlib.s - Implementations for
; stdlib.i
;---------------------------------------
; Created:  October  14th, 2022 10:07 PM
; Modified: November 15th, 2022 10:36 AM
;---------------------------------------

%include "linux64/syscall.i"
%include "signal.i"

   section .text
   global calloc
   global malloc
calloc:
   mov   rax,rdi
   mul   rsi
   mov   rdi,rax
malloc:
   ; TODO: Implement
   xor   eax,eax
   ret
   
   section .text
   global free
free:
   ; TODO: Implement
   ret

   section .text
   global realloc
realloc:
   push  rbx
   push  rbp
   push  r12

   ; Preserve input
   mov   rbx,rsi
   mov   rbp,rdi

   ; Allocate new block
   mov   rdi,rsi
   call  malloc

   ; Copy from src to test
   mov   rsi,rbp
   mov   rdi,rax
   mov   rcx,rbx
   rep   movsb

   ; Clean stack and return ptr in rax
   pop   r12
   pop   rbp
   pop   rbx
   ret

   section .text
   global abort
abort:
   mov   edi,SIGABRT
   jmp   raise
;abort

   section .text
   global exit
exit:
   xor   eax,eax
   mov   al,SYS_EXIT
   syscall
;exit

   section .text
   global $abs
   global labs
$abs: ; abs is a NASM mnemonic, need to escape it
   movsx rdi,edi
labs:
   xor   eax,eax
   add   rax,rdi
   jge   .no_abs
   neg   rax
   .no_abs:
   ret
;labs

