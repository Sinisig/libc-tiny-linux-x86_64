;---------------------------------------
; flags.i - Header containing many
; enums and flags
;---------------------------------------
; Created:  October   5th, 2022  1:23 PM
; Modified: November 14th, 2022 10:26 AM
;---------------------------------------

%ifndef __LINUX64_FLAGS_I
%define __LINUX64_FLAGS_I
;------------------------

; File open flags
O_RDONLY    equ 0x00000000
O_WRONLY    equ 0x00000001
O_RDWR      equ 0x00000002
O_APPEND    equ 0x00000400
O_ASYNC     equ 0x00002000
O_CLOEXEC   equ 0x00080000
O_CREAT     equ 0x00000040
O_DIRECT    equ 0x00004000
O_DIRECTORY equ 0x00010000
O_DSYNC     equ 0x00001000
O_EXCL      equ 0x00000080
O_LARGEFILE equ 0x00000000
O_NOATIME   equ 0x00040000
O_NOCTTY    equ 0x00000100
O_NOFOLLOW  equ 0x00020000
O_NONBLOCK  equ 0x00000800
O_NDELAY    equ 0x00000800
O_PATH      equ 0x00200000
O_SYNC      equ 0x00101000
O_TMPFILE   equ 0x00410000
O_TRUNC     equ 0x00000200

; File permissions
S_IRWXU  equ 0x000001C0
S_IRUSR  equ 0x00000100
S_IWUSR  equ 0x00000080
S_IXUSR  equ 0x00000040
S_IRWXG  equ 0x00000038
S_IRGRP  equ 0x00000020
S_IWGRP  equ 0x00000010
S_IXGRP  equ 0x00000008
S_IRWXO  equ 0x00000007
S_IROTH  equ 0x00000004
S_IWOTH  equ 0x00000002
S_IXOTH  equ 0x00000001

;------------------------
%endif ;__LINUX64_FLAGS_I

