;---------------------------------------
; stdlib.h - General library functions
;---------------------------------------
; Created:  October  14th, 2022 10:03 PM
; Modified: November 15th, 2022 10:03 AM
;---------------------------------------

%ifndef __LIBC_TINY_STDLIB_I
%define __LIBC_TINY_STDLIB_I
;---------------------------

%include "stddef.i"
%include "limits.i"

; Constants
EXIT_FAILURE   equ 1
EXIT_SUCCESS   equ 0
RAND_MAX       equ INT_MAX
;MB_CUR_MAX     equ 0   ; !!

; Structs
struc div_t
   .quot resd 1
   .rem  resd 1
endstruc

struc ldiv_t
   .quot resq 1
   .rem  resq 1
endstruc

; Functions
extern atoi       ; !!
extern atof       ; !!
extern atol       ; !!
extern strtod     ; !!
extern strtol     ; !!
extern strtoul    ; !!
extern calloc
extern free       ; !!
extern malloc     ; !!
extern realloc
extern abort
extern atexit     ; !!
extern exit
extern getenv     ; !!
extern system     ; !!
extern bsearch    ; !!
extern qsort      ; !!
extern $abs
extern div        ; !!
extern labs
extern ldiv       ; !!
extern rand       ; !!
extern srand      ; !!
extern mblen      ; !!
extern mbstowcs   ; !!
extern mbtowc     ; !!
extern wcstombs   ; !!
extern wctomb     ; !!

;---------------------------
%endif ;__LIBC_TINY_STDLIB_I

