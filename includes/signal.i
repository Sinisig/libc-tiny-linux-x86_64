;---------------------------------------
; signal.i - Functions for sending
; and handling process signals
;---------------------------------------
; Created:  October   5th, 2022  8:59 PM
; Modified: November 14th, 2022 10:04 AM
;---------------------------------------

%ifndef __LIBC_TINY_SIGNAL_I
%define __LIBC_TINY_SIGNAL_I
;---------------------------

%include "linux64/signal.i"

; Standard Signal IDs
SIGABRT  equ SIGABRT
SIGFPE   equ SIGFPE
SIGILL   equ SIGILL
SIGINT   equ SIGINT
SIGSEGV  equ SIGSEGV
SIGTERM  equ SIGTERM

; Default signal handers
extern __sys_sig_handler_default
extern __sys_sig_handler_ignore
SIG_DFL  equ __sys_sig_handler_default
SIG_IGN  equ __sys_sig_handler_ignore

; Functions
extern raise
extern signal  ; !!

;---------------------------
%endif ;__LIBC_TINY_SIGNAL_I

