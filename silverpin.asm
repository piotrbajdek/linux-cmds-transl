; Apache License 2.0
; Copyright 2022 Piotr Bajdek

; nasm -f elf64 silverpin.asm
; ld -o silverpin silverpin.o
; sudo cp silverpin /var/usrlocal/bin/

%macro prntmsg 2
    mov rdx, %2    ; lenX
    mov rsi, %1    ; msgX
    mov rdi, 1     ; stdout
    mov rax, 1     ; write system call
    syscall
%endmacro

section .data

msg1    db 'License:  Apache License 2.0 © 2022 Piotr Bajdek', 0Ah, 0h
len1    equ $ - msg1
msg2    db '', 0Ah, 0h
len2    equ $ - msg2
msg3    db 'Version:  October 5, 2022 v1.0.1', 0Ah, 0h
len3    equ $ - msg3
msg4    db '', 0Ah, 0h
len4    equ $ - msg4
msg5    db 'Source:   https://github.com/piotrbajdek/silverpin', 0Ah, 0h
len5    equ $ - msg5
msg6    db '', 0Ah, 0h
len6    equ $ - msg6
msg7    db 'Usage:    silverpin      display help', 0Ah, 0h
len7    equ $ - msg7
msg8    db '          silverpin0     ostree admin pin 0', 0Ah, 0h
len8    equ $ - msg8
msg9    db '          silverpin1     ostree admin pin 1', 0Ah, 0h
len9    equ $ - msg9
msg10   db '          silverunpin0   ostree admin pin --unpin 0', 0Ah, 0h
len10   equ $ - msg10
msg11   db '          silverunpin1   ostree admin pin --unpin 1', 0Ah, 0h
len11   equ $ - msg11
msg12   db '          silverunpin2   ostree admin pin --unpin 2', 0Ah, 0h
len12   equ $ - msg12
msg13   db '          silverunpin3   ostree admin pin --unpin 3', 0Ah, 0h
len13   equ $ - msg13

section .text
global _start

_start:

prntmsg msg1, len1
prntmsg msg2, len2
prntmsg msg3, len3
prntmsg msg4, len4
prntmsg msg5, len5
prntmsg msg6, len6
prntmsg msg7, len7
prntmsg msg8, len8
prntmsg msg9, len9
prntmsg msg10, len10
prntmsg msg11, len11
prntmsg msg12, len12
prntmsg msg13, len13

    xor rdi, rdi   ; exit code 0
    mov rax, 60    ; exit system call
    syscall
