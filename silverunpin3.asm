; Apache License 2.0
; Copyright 2022 Piotr Bajdek

; nasm -f elf64 silverunpin3.asm
; ld -o silverunpin3 silverunpin3.o
; sudo cp silverunpin3 /var/usrlocal/bin/

section .data

comm    db '/usr/bin/ostree', 0h
arg1    db 'admin', 0h
arg2    db 'pin', 0h
arg3    db '--unpin', 0h
arg4    db '3', 0h

args    dd comm
        dd arg1
        dd arg2
        dd arg3
        dd arg4
        dd 0h

section .text
global _start

_start:

    mov rcx, args
    mov rbx, comm
    mov rax, 11   ; execve system call
    int 80h

    mov rbx, 0
    mov rax, 1    ; exit system call
    int 80h
