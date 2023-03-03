global    _main               ;entry point for linker
    section   .text           ;text contains logic for program
_main:                          
    mov       rax, 0x02000004 ;system call for write
    mov       rdi, 1          ;file handle 1 is stdout
    mov       rsi, message    ;address of string to output
    mov       rdx, 13         ;length or number of bytes
    syscall                   ;call kernel to do the write
    mov       rax, 0x02000001 ;system call for exit
    xor       rdi, rdi        ;exit code 0
    syscall                   ;call kernel to exit
    section   .data           ;constants
message:  
    db        "Hello, World", 10 
