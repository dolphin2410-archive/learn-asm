mov al, 'H'
call  my_print_fn

jmp $	; Thank you!

my_print_fn:
	pusha
	mov ah, 0x0e
	int 0x10
	popa
	ret

times 510-($-$$) db 0
dw 0xaa55
