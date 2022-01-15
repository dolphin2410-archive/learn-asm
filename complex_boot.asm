ORG 0x7c00

mov bx, welcome
call print_string

jmp $

print_string:
	pusha
	mov ah, 0x0e
	mov al, [bx]
	loop:
		cmp al, 0
		je break
		int 0x10
		add bx, 0x01
		mov al, [bx]
		jmp loop
	break:
		popa
		ret

welcome db 'Hello, World!',0

times 510-($-$$) db 0
dw 0xaa55
