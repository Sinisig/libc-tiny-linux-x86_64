;----------------------------------------
; signal.s - Implementations for signal.i
;----------------------------------------
; Created:  October   5th, 2022  8:57 PM
; Modified: November 14th, 2022 10:05 AM
;----------------------------------------

%include "linux64/linux.i"

   section .text
   global __sys_sig_handler_default
   global __sys_sig_handler_ignore
__sys_sig_handler_default:
__sys_sig_handler_ignore:
   ret
;__sys_sig_handler_default
;__sys_sig_handler_ignore

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
   xor   eax,eax
   mov   al,SYS_KILL
   syscall
   pop   rbx
   ret
;raise

