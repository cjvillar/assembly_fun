# assembly_fun  💾
Assembly is fun and cooler than Python until you have to do anything other than 'Hello World'. 

Here I'll use the Netwide Assembler (NASM).

## Quick Start
**for mac intel x_86**
1. If `whereis nasm` does not return a path, Get nasm installed with home brew:
`brew install nasm`

2. Assemble code into an object file:
`nasm -f macho64 <name_of_file>.asm`

3. Get a headache trying to remember how to link and turn the file into an executable with `ld` on mac, but then remember you can use gcc:
`gcc <name_of_file>.o -o <name_of_executable>`

*provided your entry point is _main*

4. Run `./<name_of_executable>`

5. Feel really cool with a slight amount of imposter syndrome.

### Extra fun:
I have included 'hello' world in C to show the difference 



Also, if you use `otool -tv helloWorld` you can see the machine instructions for the program.

```

helloWorld.o:
(__TEXT,__text) section
_main:
0000000000000000        movl    $0x2000004, %eax                ## imm = 0x2000004
0000000000000005        movl    $0x1, %edi
000000000000000a        movabsq $0x0, %rsi
0000000000000014        movl    $0xd, %edx
0000000000000019        syscall
000000000000001b        movl    $0x2000001, %eax                ## imm = 0x2000001
0000000000000020        xorq    %rdi, %rdi
0000000000000023        syscall

```
