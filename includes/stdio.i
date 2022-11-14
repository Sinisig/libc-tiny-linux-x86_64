;--------------------------------------
; stdio.i - Input/output functions
;--------------------------------------
; Created:  October  5th, 2022 10:09 AM
; Modified: October 11th, 2022  6:44 PM
;--------------------------------------

%ifndef __LIBC_TINY_STDIO_I
%define __LIBC_TINY_STDIO_I
;--------------------------

%include "linux64/stream.i"

; Standard file streams
stdin    equ FD_STDIN
stdout   equ FD_STDOUT
stderr   equ FD_STDERR

extern fputs
extern puts
extern fputc
extern putc

;--------------------------
%endif ;__LIBC_TINY_STDIO_I

