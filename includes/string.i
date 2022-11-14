;--------------------------------------
; string.i - String / memory functions
;--------------------------------------
; Created:  October  5th, 2022  9:41 AM
; Modified: October 11th, 2022  7:12 PM
;--------------------------------------

%ifndef __LIBC_TINY_STRING_I
%define __LIBC_TINY_STRING_I
;---------------------------

extern memchr
extern memcmp
extern memcpy
extern memmove
extern memset
extern strcat
extern strncat
extern strchr
extern strcmp
extern strncmp
extern strcoll
extern strcpy
extern strncpy
extern strcspn
extern strerror
extern strlen
extern strpbrk
extern strrchr
extern strspn
extern strstr
extern strtok
extern strxfrm

;---------------------------
%endif ;__LIBC_TINY_STRING_I

