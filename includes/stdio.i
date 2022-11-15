;---------------------------------------
; stdio.i - Input/output functions
;---------------------------------------
; Created:  October   5th, 2022 10:09 AM
; Modified: November 15th, 2022 10:33 AM
;---------------------------------------

%ifndef __LIBC_TINY_STDIO_I
%define __LIBC_TINY_STDIO_I
;--------------------------

%include "linux64/stream.i"
%include "stddef.i"

; Constants
_IOFBF         equ 0    ; !!
_IOLBF         equ 0    ; !!
_IONBF         equ 0    ; !!
BUFSIZ         equ 0    ; !!
EOF            equ 0    ; !!
FOPEN_MAX      equ 0    ; !!
FILENAME_MAX   equ 0    ; !!
L_tmpnam       equ 0    ; !!
SEEK_CUR       equ 0    ; !!
SEEK_END       equ 0    ; !!
SEEK_SET       equ 0    ; !!
TMP_MAX        equ 0    ; !!
stdin          equ 0    ; !!
stdout         equ 0    ; !!
stderr         equ 0    ; !!

; Structs
;struc FILE
   ; !!
;endstruc

;struc fpos_t
   ; !!
;endstruc

; Functions
extern fclose     ; !!
extern clearerr   ; !!
extern feof       ; !!
extern ferror     ; !!
extern fflush     ; !!
extern fgetpos    ; !!
extern fopen      ; !!
extern fread      ; !!
extern freopen    ; !!
extern fseek      ; !!
extern fsetpos    ; !!
extern ftell      ; !!
extern fwrite     ; !!
extern remove     ; !!
extern rename     ; !!
extern rewind     ; !!
extern setbuf     ; !!
extern setvbuf    ; !!
extern tmpfile    ; !!
extern tmpnam     ; !!
extern fprintf    ; !!
extern printf     ; !!
extern sprintf    ; !!
extern vfprintf   ; !!
extern vprintf    ; !!
extern vsprintf   ; !!
extern fscanf     ; !!
extern scanf      ; !!
extern sscanf     ; !!
extern fgetc      ; !!
extern fgets      ; !!
extern fputc      ; !!
extern fputs      ; !!
extern getc       ; !!
extern getchar    ; !!
extern gets       ; !!
extern putc       ; !!
extern putchar    ; !!
extern puts       ; !!
extern ungetc     ; !!
extern perror     ; !!

;--------------------------
%endif ;__LIBC_TINY_STDIO_I

