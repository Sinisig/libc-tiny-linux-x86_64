;----------------------------------------
; string.s - Implementations for string.i
;----------------------------------------
; Created:  October  5th, 2022  9:39 AM
; Modified: October 13th, 2022 10:02 PM
;----------------------------------------


   section .text
   global memchr
memchr:
   mov   eax,esi  ; byte
   mov   rcx,rdx  ; count
   mov   rsi,rdi  ; str
   repne scasb

   ; If found, return ptr to match
   ; If not found, return NULL
   cmovnz   eax,ecx
   jnz      .not_found
   mov      rax,rdi
   dec      rax
   .not_found:
   ret
;memchr

   section .text
   global memcmp
memcmp:
   push  rbx
   mov   rcx,rdx
   xor   eax,eax
   xor   ebx,ebx
   xor   edx,edx
   test  rcx,rcx
   jz    .exit

   .cmp:
      cmpsb
      seta  dl
      setb  bl
      add   eax,edx
      sub   eax,ebx
      loop  .cmp
   ;.cmp

   .exit:
   pop   rbx
   ret
;memcmp

   section .text
   global memcpy
memcpy:
   mov   rax,rdi
   mov   rcx,rdx
   rep   movsb
   ret
;memcpy:

   section .text
   global memmove
memmove:
   ; This can overflow the stack with
   ; very large chunks. It also reduces
   ; performance from O(n) -> O(2n).
   ; Too bad!
   sub   rsp,rdx
   mov   r11,rdi

   ; Copy from src to stack
   mov   rcx,rdx
   mov   rdi,rsp
   rep   movsb

   ; Copy from stack to dest
   mov   rcx,rdx
   mov   rdi,r11
   mov   rsi,rsp
   rep   movsb

   mov   rax,r11
   add   rsp,rdx
   ret
;memmove

   section .text
   global memset
memset:
   mov   rax,rdi
   mov   rcx,rdx
   mov   eax,esi
   rep   stosb
   ret
;memset

   section .text
   global strlen
strlen:
   xor   eax,eax
   
   dec   rdi
   dec   rax
   .find_null:
      inc   rdi
      inc   rax
      cmp   byte [rdi],0x00   ; Null
      jne   .find_null
   ;search

   ret
;strlen

