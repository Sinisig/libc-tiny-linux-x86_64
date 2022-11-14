;--------------------------------------
; stdlib.s - Implementations for
; stdlib.i
;--------------------------------------
; Created:  October 14th, 2022 10:07 PM
; Modified: October 14th, 2022 10:18 PM
;--------------------------------------


   section .text
   global atoi
atoi:
   xor   eax,eax
   ret
;atoi

   section .text
   global atof
atof:
   xorpd xmm0,xmm0
   ret
;atof

