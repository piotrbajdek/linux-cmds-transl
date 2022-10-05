; Apache License 2.0
; Copyright 2022 Piotr Bajdek

; nasm -f elf64 silverpin1.asm
; ld -o silverpin1 silverpin1.o
; sudo cp silverpin1 /var/usrlocal/bin/

section .data

comm    db '/usr/bin/ostree', 0h
arg1    db 'admin', 0h
arg2    db 'pin', 0h
arg3    db '1', 0h

args    dd comm
        dd arg1
        dd arg2
        dd arg3
        dd 0h

section .text
global _start

_start:

    mov rcx, args
    mov rbx, comm
    mov rax, 11    ; execve system call
    int 80h

    xor rdi, rdi   ; exit code 0
    mov rax, 60    ; exit system call
    syscall
