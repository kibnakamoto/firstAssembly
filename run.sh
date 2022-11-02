nasm -f elf64 assembly.s -g -F dwarf -O3 -o assembly.o
gcc -no-pie -g -O3 -F dwarf assembly.o -m64 -o asm
./asm
