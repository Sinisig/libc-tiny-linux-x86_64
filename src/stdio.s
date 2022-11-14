;--------------------------------------
; stdio.s - Implementations for stdio.i
;--------------------------------------
; Created:  October  5th, 2022 10:09 AM
; Modified: October 13th, 2022 10:01 PM
;--------------------------------------

%include "linux64/linux.i"
%include "string.i"

   section .text
   global fputs
fputs:
   push  rbx
   push  rbx
   push  rbp
   
   mov   ebx,edi
   mov   rbp,rsi
   mov   rdi,rsi
   call  strlen

   mov   edx,eax
   mov   edi,ebx
   xor   eax,eax
   mov   rsi,rbp
   mov   al,SYS_WRITE
   syscall
   
   pop   rbp
   pop   rbx
   pop   rbx
   ret
;fputs

   section .text
   global puts
puts:
   push  rbx
   mov   rsi,rdi
   mov   edi,FD_STDOUT
   call  fputs
   pop   rbx
   mov   dil,0x0A ; Newline
   jmp   putc
;puts

   section .text
   global fputc
fputc:
   sub   rsp,0x08
   mov   byte [rsp+0x00],sil
   mov   byte [rsp+0x01],0x00 ; Null
   mov   rsi,rsp
   call  fputs
   add   rsp,0x08
   ret
;fputc

   section .text
   global putc
putc:
   mov   esi,edi
   mov   edi,FD_STDOUT
   jmp   fputc
;putc

