;----------------------------------------
; signal.s - Implementations for signal.i
;----------------------------------------
; Created:  October  5th, 2022  8:57 PM
; Modified: October 13th, 2022 10:00 PM
;----------------------------------------

%include "linux64/linux.i"


   section .text
   global kill
kill:
   push  rbx
   xor   eax,eax
   mov   al,SYS_KILL
   syscall
   pop   rbx
   ret
;kill

   section .text
   global raise
raise:
   push  rbx
   xor   eax,eax
   mov   ebx,edi
   mov   al,SYS_GETPID
   syscall
   mov   edi,eax
   mov   esi,ebx
   call  kill
   pop   rbx
   ret
;raise

   section .text
   global abort
abort:
   mov   edi,SIGABRT
   jmp   raise
;abort

   section .text
   global signal
signal:
   ; TODO: Implement
   xor   eax,eax
   not   eax
   ret
;signal

   section .text
   global __sys_sig_handler_default
   global __sys_sig_handler_ignore
__sys_sig_handler_default:
__sys_sig_handler_ignore:
   ret
;__sys_sig_handler_default
;__sys_sig_handler_ignore

