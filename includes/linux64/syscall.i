;----------------------------------------
; linxu64/syscall.i - Syscall definitions
;----------------------------------------
; Created:  October   4th, 2022 10:19 PM
; Modified: November 14th, 2022 10:29 AM
;----------------------------------------

%ifndef __LINUX64_SYSCALL_I
%define __LINUX64_SYSCALL_I
;--------------------------

SYS_READ                   equ 0x0000
SYS_WRITE                  equ 0x0001
SYS_OPEN                   equ 0x0002
SYS_CLOSE                  equ 0x0003
SYS_STAT                   equ 0x0004
SYS_FSTAT                  equ 0x0005
SYS_LSTAT                  equ 0x0006
SYS_POLL                   equ 0x0007
SYS_LSEEK                  equ 0x0008
SYS_MMAP                   equ 0x0009
SYS_MPROTECT               equ 0x000A
SYS_MUNMAP                 equ 0x000B
SYS_BRK                    equ 0x000C
SYS_RT_SIGACTION           equ 0x000D
SYS_RT_SIGPROCMASK         equ 0x000E
SYS_RT_SIGRETURN           equ 0x000F
SYS_IOCTL                  equ 0x0010
SYS_PREAD64                equ 0x0011
SYS_PWRITE64               equ 0x0012
SYS_READV                  equ 0x0013
SYS_WRITEV                 equ 0x0014
SYS_ACCESS                 equ 0x0015
SYS_PIPE                   equ 0x0016
SYS_SELECT                 equ 0x0017
SYS_SCHED_YIELD            equ 0x0018
SYS_MREMAP                 equ 0x0019
SYS_MSYNC                  equ 0x001A
SYS_MINCORE                equ 0x001B
SYS_MADVISE                equ 0x001C
SYS_SHMGET                 equ 0x001D
SYS_SHMAT                  equ 0x001E
SYS_SHMCTL                 equ 0x001F
SYS_DUP                    equ 0x0020
SYS_DUP2                   equ 0x0021
SYS_PAUSE                  equ 0x0022
SYS_NANOSLEEP              equ 0x0023
SYS_GETITIMER              equ 0x0024
SYS_ALARM                  equ 0x0025
SYS_SETITIMER              equ 0x0026
SYS_GETPID                 equ 0x0027
SYS_SENDFILE               equ 0x0028
SYS_SOCKET                 equ 0x0029
SYS_CONNECT                equ 0x002A
SYS_ACCEPT                 equ 0x002B
SYS_SENDTO                 equ 0x002C
SYS_RECVFROM               equ 0x002D
SYS_SENDMSG                equ 0x002E
SYS_RECVMSG                equ 0x002F
SYS_SHUTDOWN               equ 0x0030
SYS_BIND                   equ 0x0031
SYS_LISTEN                 equ 0x0032
SYS_GETSOCKNAME            equ 0x0033
SYS_GETPEERNAME            equ 0x0034
SYS_SOCKETPAIR             equ 0x0035
SYS_SETSOCKOPT             equ 0x0036
SYS_GETSOCKOPT             equ 0x0037
SYS_CLONE                  equ 0x0038
SYS_FORK                   equ 0x0039
SYS_VFORK                  equ 0x003A
SYS_EXECVE                 equ 0x003B
SYS_EXIT                   equ 0x003C
SYS_WAIT4                  equ 0x003D
SYS_KILL                   equ 0x003E
SYS_UNAME                  equ 0x003F
SYS_SEMGET                 equ 0x0040
SYS_SEMOP                  equ 0x0041
SYS_SEMCTL                 equ 0x0042
SYS_SHMDT                  equ 0x0043
SYS_MSGGET                 equ 0x0044
SYS_MSGSND                 equ 0x0045
SYS_MSGRCV                 equ 0x0046
SYS_MSGCTL                 equ 0x0047
SYS_FCNTL                  equ 0x0048
SYS_FLOCK                  equ 0x0049
SYS_FSYNC                  equ 0x004A
SYS_FDATASYNC              equ 0x004B
SYS_TRUNCATE               equ 0x004C
SYS_FTRUNCATE              equ 0x004D
SYS_GETDENTS               equ 0x004E
SYS_GETCWD                 equ 0x004F
SYS_CHDIR                  equ 0x0050
SYS_FCHDIR                 equ 0x0051
SYS_RENAME                 equ 0x0052
SYS_MKDIR                  equ 0x0053
SYS_RMDIR                  equ 0x0054
SYS_CREAT                  equ 0x0055
SYS_LINK                   equ 0x0056
SYS_UNLINK                 equ 0x0057
SYS_SYMLINK                equ 0x0058
SYS_READLINK               equ 0x0059
SYS_CHMOD                  equ 0x005A
SYS_FCHMOD                 equ 0x005B
SYS_CHOWN                  equ 0x005C
SYS_FCHOWN                 equ 0x005D
SYS_LCHOWN                 equ 0x005E
SYS_UMASK                  equ 0x005F
SYS_GETTIMEOFDAY           equ 0x0060
SYS_GETRLIMIT              equ 0x0061
SYS_GETRUSAGE              equ 0x0062
SYS_SYSINFO                equ 0x0063
SYS_TIMES                  equ 0x0064
SYS_PTRACE                 equ 0x0065
SYS_GETUID                 equ 0x0066
SYS_SYSLOG                 equ 0x0067
SYS_GETGID                 equ 0x0068
SYS_SETUID                 equ 0x0069
SYS_SETGID                 equ 0x006A
SYS_GETEUID                equ 0x006B
SYS_GETEGID                equ 0x006C
SYS_SETPGID                equ 0x006D
SYS_GETPPID                equ 0x006E
SYS_GETPGRP                equ 0x006F
SYS_SETSID                 equ 0x0070
SYS_SETREUID               equ 0x0071
SYS_SETREGID               equ 0x0072
SYS_GETGROUPS              equ 0x0073
SYS_SETGROUPS              equ 0x0074
SYS_SETRESUID              equ 0x0075
SYS_GETRESUID              equ 0x0076
SYS_SETRESGID              equ 0x0077
SYS_GETRESGID              equ 0x0078
SYS_GETPGID                equ 0x0079
SYS_SETFSUID               equ 0x007A
SYS_SETFSGID               equ 0x007B
SYS_GETSID                 equ 0x007C
SYS_CAPGET                 equ 0x007D
SYS_CAPSET                 equ 0x007E
SYS_RT_SIGPENDING          equ 0x007F
SYS_RT_SIGTIMEDWAIT        equ 0x0080
SYS_RT_SIGQUEUEINFO        equ 0x0081
SYS_RT_SIGSUSPEND          equ 0x0082
SYS_SIGALTSTACK            equ 0x0083
SYS_UTIME                  equ 0x0084
SYS_MKNOD                  equ 0x0085
SYS_USELIB                 equ 0x0086
SYS_PERSONALITY            equ 0x0087
SYS_USTAT                  equ 0x0088
SYS_STATFS                 equ 0x0089
SYS_FSTATFS                equ 0x008A
SYS_SYSFS                  equ 0x008B
SYS_GETPRIORITY            equ 0x008C
SYS_SETPRIORITY            equ 0x008D
SYS_SCHED_SETPARAM         equ 0x008E
SYS_SCHED_GETPARAM         equ 0x008F
SYS_SCHED_SETSCHEDULER     equ 0x0090
SYS_SCHED_GETSCHEDULER     equ 0x0091
SYS_SCHED_GET_PRIORITY_MAX equ 0x0092
SYS_SCHED_GET_PRIORITY_MIN equ 0x0093
SYS_SCHED_RR_GET_INTERVAL  equ 0x0094
SYS_MLOCK                  equ 0x0095
SYS_MUNLOCK                equ 0x0096
SYS_MLOCKALL               equ 0x0097
SYS_MUNLOCKALL             equ 0x0098
SYS_VHANGUP                equ 0x0099
SYS_MODIFY_LDT             equ 0x009A
SYS_PIVOT_ROOT             equ 0x009B
SYS__SYSCTL                equ 0x009C
SYS_PRCTL                  equ 0x009D
SYS_ARCH_PRCTL             equ 0x009E
SYS_ADJTIMEX               equ 0x009F
SYS_SETRLIMIT              equ 0x00A0
SYS_CHROOT                 equ 0x00A1
SYS_SYNC                   equ 0x00A2
SYS_ACCT                   equ 0x00A3
SYS_SETTIMEOFDAY           equ 0x00A4
SYS_MOUNT                  equ 0x00A5
SYS_UMOUNT2                equ 0x00A6
SYS_SWAPON                 equ 0x00A7
SYS_SWAPOFF                equ 0x00A8
SYS_REBOOT                 equ 0x00A9
SYS_SETHOSTNAME            equ 0x00AA
SYS_SETDOMAINNAME          equ 0x00AB
SYS_IOPL                   equ 0x00AC
SYS_IOPERM                 equ 0x00AD
SYS_CREATE_MODULE          equ 0x00AE
SYS_INIT_MODULE            equ 0x00AF
SYS_DELETE_MODULE          equ 0x00B0
SYS_GET_KERNEL_SYMS        equ 0x00B1
SYS_QUERY_MODULE           equ 0x00B2
SYS_QUOTACTL               equ 0x00B3
SYS_NFSSERVCTL             equ 0x00B4
SYS_GETPMSG                equ 0x00B5
SYS_PUTPMSG                equ 0x00B6
SYS_AFS_SYSCALL            equ 0x00B7
SYS_TUXCALL                equ 0x00B8
SYS_SECURITY               equ 0x00B9
SYS_GETTID                 equ 0x00BA
SYS_READAHEAD              equ 0x00BB
SYS_SETXATTR               equ 0x00BC
SYS_LSETXATTR              equ 0x00BD
SYS_FSETXATTR              equ 0x00BE
SYS_GETXATTR               equ 0x00BF
SYS_LGETXATTR              equ 0x00C0
SYS_FGETXATTR              equ 0x00C1
SYS_LISTXATTR              equ 0x00C2
SYS_LLISTXATTR             equ 0x00C3
SYS_FLISTXATTR             equ 0x00C4
SYS_REMOVEXATTR            equ 0x00C5
SYS_LREMOVEXATTR           equ 0x00C6
SYS_FREMOVEXATTR           equ 0x00C7
SYS_TKILL                  equ 0x00C8
SYS_TIME                   equ 0x00C9
SYS_FUTEX                  equ 0x00CA
SYS_SCHED_SETAFFINITY      equ 0x00CB
SYS_SCHED_GETAFFINITY      equ 0x00CC
SYS_SET_THREAD_AREA        equ 0x00CD
SYS_IO_SETUP               equ 0x00CE
SYS_IO_DESTROY             equ 0x00CF
SYS_IO_GETEVENTS           equ 0x00D0
SYS_IO_SUBMIT              equ 0x00D1
SYS_IO_CANCEL              equ 0x00D2
SYS_GET_THREAD_AREA        equ 0x00D3
SYS_LOOKUP_DCOOKIE         equ 0x00D4
SYS_EPOLL_CREATE           equ 0x00D5
SYS_EPOLL_CTL_OLD          equ 0x00D6
SYS_EPOLL_WAIT_OLD         equ 0x00D7
SYS_REMAP_FILE_PAGES       equ 0x00D8
SYS_GETDENTS64             equ 0x00D9
SYS_SET_TID_ADDRESS        equ 0x00DA
SYS_RESTART_SYSCALL        equ 0x00DB
SYS_SEMTIMEDOP             equ 0x00DC
SYS_FADVISE64              equ 0x00DD
SYS_TIMER_CREATE           equ 0x00DE
SYS_TIMER_SETTIME          equ 0x00DF
SYS_TIMER_GETTIME          equ 0x00E0
SYS_TIMER_GETOVERRUN       equ 0x00E1
SYS_TIMER_DELETE           equ 0x00E2
SYS_CLOCK_SETTIME          equ 0x00E3
SYS_CLOCK_GETTIME          equ 0x00E4
SYS_CLOCK_GETRES           equ 0x00E5
SYS_CLOCK_NANOSLEEP        equ 0x00E6
SYS_EXIT_GROUP             equ 0x00E7
SYS_EPOLL_WAIT             equ 0x00E8
SYS_EPOLL_CTL              equ 0x00E9
SYS_TGKILL                 equ 0x00EA
SYS_UTIMES                 equ 0x00EB
SYS_VSERVER                equ 0x00EC
SYS_MBIND                  equ 0x00ED
SYS_SET_MEMPOLICY          equ 0x00EE
SYS_GET_MEMPOLICY          equ 0x00EF
SYS_MQ_OPEN                equ 0x00F0
SYS_MQ_UNLINK              equ 0x00F1
SYS_MQ_TIMEDSEND           equ 0x00F2
SYS_MQ_TIMEDRECEIVE        equ 0x00F3
SYS_MQ_NOTIFY              equ 0x00F4
SYS_MQ_GETSETATTR          equ 0x00F5
SYS_KEXEC_LOAD             equ 0x00F6
SYS_WAITID                 equ 0x00F7
SYS_ADD_KEY                equ 0x00F8
SYS_REQUEST_KEY            equ 0x00F9
SYS_KEYCTL                 equ 0x00FA
SYS_IOPRIO_SET             equ 0x00FB
SYS_IOPRIO_GET             equ 0x00FC
SYS_INOTIFY_INIT           equ 0x00FD
SYS_INOTIFY_ADD_WATCH      equ 0x00FE
SYS_INOTIFY_RM_WATCH       equ 0x00FF
SYS_MIGRATE_PAGES          equ 0x0100
SYS_OPENAT                 equ 0x0101
SYS_MKDIRAT                equ 0x0102
SYS_MKNODAT                equ 0x0103
SYS_FCHOWNAT               equ 0x0104
SYS_FUTIMESAT              equ 0x0105
SYS_NEWFSTATAT             equ 0x0106
SYS_UNLINKAT               equ 0x0107
SYS_RENAMEAT               equ 0x0108
SYS_LINKAT                 equ 0x0109
SYS_SYMLINKAT              equ 0x010A
SYS_READLINKAT             equ 0x010B
SYS_FCHMODAT               equ 0x010C
SYS_FACCESSAT              equ 0x010D
SYS_PSELECT6               equ 0x010E
SYS_PPOLL                  equ 0x010F
SYS_UNSHARE                equ 0x0110
SYS_SET_ROBUST_LIST        equ 0x0111
SYS_GET_ROBUST_LIST        equ 0x0112
SYS_SPLICE                 equ 0x0113
SYS_TEE                    equ 0x0114
SYS_SYNC_FILE_RANGE        equ 0x0115
SYS_VMSPLICE               equ 0x0116
SYS_MOVE_PAGES             equ 0x0117
SYS_UTIMENSAT              equ 0x0118
SYS_EPOLL_PWAIT            equ 0x0119
SYS_SIGNALFD               equ 0x011A
SYS_TIMERFD_CREATE         equ 0x011B
SYS_EVENTFD                equ 0x011C
SYS_FALLOCATE              equ 0x011D
SYS_TIMERFD_SETTIME        equ 0x011E
SYS_TIMERFD_GETTIME        equ 0x011F
SYS_ACCEPT4                equ 0x0120
SYS_SIGNALFD4              equ 0x0121
SYS_EVENTFD2               equ 0x0122
SYS_EPOLL_CREATE1          equ 0x0123
SYS_DUP3                   equ 0x0124
SYS_PIPE2                  equ 0x0125
SYS_INOTIFY_INIT1          equ 0x0126
SYS_PREADV                 equ 0x0127
SYS_PWRITEV                equ 0x0128
SYS_RT_TGSIGQUEUEINFO      equ 0x0129
SYS_PERF_EVENT_OPEN        equ 0x012A
SYS_RECVMMSG               equ 0x012B
SYS_FANOTIFY_INIT          equ 0x012C
SYS_FANITIFY_MARK          equ 0x012D
SYS_PRLIMIT64              equ 0x012E
SYS_NAME_TO_HANDLE_AT      equ 0x012F
SYS_OPEN_BY_HANDLE_AT      equ 0x0130
SYS_CLOCK_ADJTIME          equ 0x0131
SYS_SYNCFS                 equ 0x0132
SYS_SENDMMSG               equ 0x0133
SYS_SETNS                  equ 0x0134
SYS_GETCPU                 equ 0x0135
SYS_PROCESS_VM_READV       equ 0x0136
SYS_PROCESS_VM_WRITEV      equ 0x0137
SYS_KCMP                   equ 0x0138
SYS_FINIT_MODULE           equ 0x0139
SYS_SCHED_SETATTR          equ 0x013A
SYS_SCHED_GETATTR          equ 0x013B
SYS_RENAMEAT2              equ 0x013C
SYS_SECCOMP                equ 0x013D
SYS_GETRANDOM              equ 0x013E
SYS_MEMFD_CREATE           equ 0x013F
SYS_KEXEC_FILE_LOAD        equ 0x0140
SYS_BPF                    equ 0x0141
SYS_EXECVEAT               equ 0x0142
SYS_USERFAULTFD            equ 0x0143
SYS_MEMBARRIER             equ 0x0144
SYS_MLOCK2                 equ 0x0145
SYS_COPY_FILE_RANGE        equ 0x0146
SYS_PREADV2                equ 0x0147
SYS_PWRITEV2               equ 0x0148
SYS_PKEY_MPROTECT          equ 0x0149
SYS_PKEY_ALLOC             equ 0x014A
SYS_PKEY_FREE              equ 0x014B
SYS_STATX                  equ 0x014C
SYS_IO_PGETEVENTS          equ 0x014D
SYS_RSEQ                   equ 0x014E

;--------------------------
%endif ;__LINUX64_SYSCALL_I

