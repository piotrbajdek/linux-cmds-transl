; Apache License 2.0
; Copyright 2022 Piotr Bajdek

; nasm -f elf64 silverpin0.asm
; ld -o silverpin0 silverpin0.o
; sudo cp silverpin0 /var/usrlocal/bin/

section .data

comm    db '/usr/bin/ostree', 0h
arg1    db 'admin', 0h
arg2    db 'pin', 0h
arg3    db '0', 0h

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
