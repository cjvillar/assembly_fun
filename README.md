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

4. Run `./<name_of_executable>`

5. Feel really cool with a slight amount of imposter syndrome.

