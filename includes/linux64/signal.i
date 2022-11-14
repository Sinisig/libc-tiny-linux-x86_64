;-------------------------------------
; signal.i - Signal ID definitions
;-------------------------------------
; Created:  October 7th, 2022 11:12 AM
; Modified: October 7th, 2022 11:19 AM
;-------------------------------------

%ifndef LINUX64_SIGNAL_I
%define LINUX64_SIGNAL_I
;-----------------------



SIGHUP      equ 0x01
SIGINT      equ 0x02
SIGQUIT     equ 0x03
SIGILL      equ 0x04
SIGTRAP     equ 0x05
SIGABRT     equ 0x06
SIGBUS      equ 0x07
SIGFPE      equ 0x08
SIGKILL     equ 0x09
SIGUSR1     equ 0x0A
SIGSEGV     equ 0x0B
SIGUSR2     equ 0x0C
SIGPIPE     equ 0x0D
SIGALRM     equ 0x0E
SIGTERM     equ 0x0F
SIGCHLD     equ 0x10
SIGCONT     equ 0x11
SIGSTOP     equ 0x12
SIGTSTP     equ 0x13
SIGTTIN     equ 0x14
SIGTOU      equ 0x15
SIGURG      equ 0x16
SIGXCPU     equ 0x17
SIGXFSZ     equ 0x18
SIGVTALRM   equ 0x19
SIGPROF     equ 0x1A
SIGWINCH    equ 0x1B
SIGIO       equ 0x1C
SIGPOLL     equ 0x1C ; Intentional repeat
SIGPWR      equ 0x1D
SIGSYS      equ 0x1E
NSIG        equ 0x20

%endif

