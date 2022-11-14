;------------------------------------------
; init.s - Binary entrypoint and main setup
;------------------------------------------
; Created:  October   4th, 2022 10:27 PM
; Modified: November 11th, 2022  8:43 PM
;------------------------------------------

%include "linux64/linux.i"

extern main

   section .text
   global _entry
_entry:
   ; Load in argc, argv, and envp
   pop   rdi
   mov   rsi,rsp
   lea   rdx,qword [rsp+rdi*8+0x08]
   
   ; Align stack
   push  rdi

   ; Call main with arguments
   call  main

   ; Exit with the returned code
   mov   edi,eax
   xor   eax,eax
   mov   al,SYS_EXIT
   syscall
;_entry
