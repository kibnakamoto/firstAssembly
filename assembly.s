; to compile and run:
; nasm -f elf64 assembly.s -g -F dwarf -O3 -o assembly.o
; gcc -no-pie -g -O3 -F dwarf assembly.o -m64 -o asm
; ./asm

SECTION .data
	default rel
    extern printf, exit
    global main

fmt:
    db "%d", 10, 0

SECTION .text

main:
    sub		rsp, 8
    mov     esi, 14
    mov     eax, 10
    add     esi, eax

	lea 	rdi, [rel fmt]
	xor 	eax, eax
    call	printf

    mov     eax, 1
    int     0x80
