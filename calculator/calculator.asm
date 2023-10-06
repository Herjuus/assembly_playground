section .bss
	var1: resb

section .text
  global _main

  _main:
    mov esi, 5
		mov [var1], esi

		call PrintNumber

    mov eax, 0x2000001
    mov edi, 0
    syscall
    
	PrintNumber:
		mov esi, [var1]
		add esi, 48
		mov [var1], esi

		mov eax, 4
		mov ebx, 1
		mov ecx, var1
    mov edx, 10

    int 80h

    ret
