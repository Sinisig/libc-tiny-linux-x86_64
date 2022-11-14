;--------------------------------------
; signal.i - Functions for sending
; and handling process signals
;--------------------------------------
; Created:  October  5th, 2022  8:59 PM
; Modified: October 11th, 2022  6:45 PM
;--------------------------------------

%ifndef __LIBC_TINY_SIGNAL_I
%define __LIBC_TINY_SIGNAL_I
;---------------------------

%include "linux64/signal.i"

extern __sys_sig_handler_default
extern __sys_sig_handler_ignore
SIG_DFL  equ __sys_sig_handler_default
SIG_IGN  equ __sys_sig_handler_ignore

extern raise
extern abort
extern signal

;---------------------------
%endif ;__LIBC_TINY_SIGNAL_I

