;--------------------------------------
; limits.i - Various number limits
;--------------------------------------
; Created:  October 11th, 2022  6:38 PM
; Modified: October 11th, 2022  7:57 PM
;--------------------------------------

%ifndef __LIBC_TINY_LIMITS_I
%define __LIBC_TINY_LIMITS_I
;---------------------------

CHAR_BIT    equ   8
MB_LEN_MAX  equ   16

SCHAR_MIN   equ  -128
SCHAR_MAX   equ   127
UCHAR_MAX   equ   255
 CHAR_MIN   equ   SCHAR_MIN
 CHAR_MAX   equ   SCHAR_MAX

USHRT_MAX   equ   65535
 SHRT_MIN   equ  -32768
 SHRT_MAX   equ   32767

UINT_MAX    equ   4294967295
 INT_MIN    equ  -2147483648
 INT_MAX    equ   2147483647

ULONG_MAX   equ   18446744073709551615
 LONG_MIN   equ  -9223372036854775808
 LONG_MAX   equ   9223372036854775807

;---------------------------
%endif ;__LIBC_TINY_LIMITS_I

