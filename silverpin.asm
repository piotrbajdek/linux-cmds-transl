; Apache License 2.0
; Copyright 2022 Piotr Bajdek

; nasm -f elf64 silverpin.asm
; ld -o silverpin silverpin.o
; sudo cp silverpin /var/usrlocal/bin/

section .data

msg1    db 'License:  Apache License 2.0 © 2022 Piotr Bajdek', 0Ah, 0h
len1    equ $ - msg1
msg2    db '', 0Ah, 0h
len2    equ $ - msg2
msg3    db 'Version:  August 4, 2022 v1.0.0-alpha.2', 0Ah, 0h
len3    equ $ - msg3
msg4    db '', 0Ah, 0h
len4    equ $ - msg4
msg5    db 'Usage:    silverpin      dislpay help', 0Ah, 0h
len5    equ $ - msg5
msg6    db '          silverpin0     ostree admin pin 0', 0Ah, 0h
len6    equ $ - msg6
msg7    db '          silverpin1     ostree admin pin 1', 0Ah, 0h
len7    equ $ - msg7
msg8    db '          silverunpin0   ostree admin pin --unpin 0', 0Ah, 0h
len8    equ $ - msg8
msg9    db '          silverunpin1   ostree admin pin --unpin 1', 0Ah, 0h
len9    equ $ - msg9
msg10   db '          silverunpin2   ostree admin pin --unpin 2', 0Ah, 0h
len10   equ $ - msg10
msg11   db '          silverunpin3   ostree admin pin --unpin 3', 0Ah, 0h
len11   equ $ - msg11

section .text
global _start

_start:

    mov rdx, len1
    mov rcx, msg1
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len2
    mov rcx, msg2
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len3
    mov rcx, msg3
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len4
    mov rcx, msg4
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len5
    mov rcx, msg5
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len6
    mov rcx, msg6
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len7
    mov rcx, msg7
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len8
    mov rcx, msg8
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len9
    mov rcx, msg9
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len10
    mov rcx, msg10
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rdx, len11
    mov rcx, msg11
    mov rbx, 1
    mov rax, 4    ; write system call
    int 80h

    mov rbx, 0
    mov rax, 1    ; exit system call
    int 80h
