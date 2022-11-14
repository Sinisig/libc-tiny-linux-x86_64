# libc-tiny-linux-x86_64
A work-in-progress tiny implementation of the C Standard Library / C Runtime targetting 64-bit Intel/AMD Linux.

### Important Note
This implementation is in the very early development stages.  Most of the C Standard Library functions are not yet implemented.  Right now it is more of a proof-of-concept and novelty for how small of a space the entire C Standard Library can fit into.

### Usage
 - Compile the binary using the provided instructions
 - Link the library according to your toolchain
 - Include the library headers in which ever way is desired
 - Disable linking with the system-provided C Standard Library and C Runtime
 - Program like you normally would with the C library functions
 - When linking, make sure to set the entrypoint symbol to "\_entry" (default for GCC is "\_start", can be changed with "-Wl,-e \_entry")

### Build Requirements
 - A Linux installation
 - [Netwide Assembler](https://nasm.us/)
 - [GNU Binutils](https://www.gnu.org/software/binutils/)
 - [GNU Make](https://www.gnu.org/software/make/)

##### The above tools can be installed with the following commands
Debian based (Debian, Ubuntu, Mint, etc.):
```
sudo apt-get install nasm binutils make
```

Arch based (Arch, Arco, Manjaro):
```
sudo pacman -S nasm binutils make
```

### Building
 - Make sure the above packages are installed
 - Open a terminal and change directory to the project's directory
 - Type 'make' in the terminal
 - If building is successful, the output will be bin/libc.a

### About
This project started off as implementations of strlen and fputs for a QR-code program project I was working on.  This was around the 5th time I implemented these functions in x86-64 assembly with no libraries, so I decided to make a separate library for them.  I then thought about implementing more standard library functions for use in tiny programming with no libraries.  Eventually I decided to try implementing the entire C Standard Library in x86-64 assembly with the goal of being as small as possible.  While the code is tiny, it is not fast.  Many inefficient instructions and coding techniques are used to save bytes wherever possible.  If you are looking for performance, you should look elsewhere.  This library is intended for those who are writing tiny programs and want to save every byte possible without writing the very platform-specific C Standard Library implementation themself.  The code is also very unreadable, as lots of down right stupid and hideous coding techniques are used to save every byte possible.  If you are looking to contribute or at the very least understand the implementation, you should be very comfortable reading optimized assembly and be willing to set aside potentially hours to fully understand the code.

