;-------------------------------------------
; linux64/stream.i - Definitions for special
; file descriptors
;-------------------------------------------
; Created:  October   4th, 2022 11:22 PM
; Modified: November 14th, 2022 10:28 AM
;-------------------------------------------

%ifndef __LINUX64_STREAM_I
%define __LINUX64_STREAM_I
;-------------------------

FD_STDIN    equ 0x00
FD_STDOUT   equ 0x01
FD_STDERR   equ 0x02

;-------------------------
%endif ;__LINUX64_STREAM_I

