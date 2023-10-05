section .data
    message: db "Hello World!", 0
    message_length: equ $-message

global _main

section .text
    _main:
        mov rax, 0x2000004
        mov rdi, 1
        lea rsi, [rel message]
        mov rdx, message_length
        syscall

        mov rax, 0x2000001
        mov rdi, 0
        syscall