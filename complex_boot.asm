ORG 0x7c00

mov bx, welcome
call print_string		; Print
call print_string

jmp $

print_string:
	pusha			; Push All
	mov ah, 0x0e		; Write mode
	mov al, [bx]		; The index of the first char
	loop:
		cmp al, 0	; On String End
		je break	; Break
		int 0x10	; Interrupt
		add bx, 0x01	; The next string index
		mov al, [bx]	; Char at the index 'bx'
		jmp loop	; Loop
	break:
		popa		; Pop All
		ret		; Return

welcome db 'Hello, World!',0x0a,0x0d,0

times 510-($-$$) db 0
dw 0xaa55
