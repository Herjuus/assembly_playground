.intel_syntax noprefix
.global _start

_start:
	mov rax, 1
	mov rdi, 1
	lea rsi, [message]
	mov rdx, 12
	syscall

	mov rax, 60
	mov rdi, 0
	syscall

message:
	.asciz "Hello World"
