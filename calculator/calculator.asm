section .bss
	var1: resb

global _main

section .text
  _main:
    mov esi, 5
		mov [var1], esi
    call PrintNumber

    mov rax, 0x2000001
    mov rdi, 0
    syscall
    
	PrintNumber:
		mov esi, [var1]
		add esi, 48
		mov [var1], esi

		mov eax, 4
		mov ebx, 1
		mov ecx, var1
    mov edx, 10
