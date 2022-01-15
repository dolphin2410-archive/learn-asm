mov ah, 0x02

mov dl, 0
mov ch, 3
mov dh, 1

mov cl, 4

mov al, 5

mov bx, 0xa000
mov es, bx
mov bx, 0x1234

int 0x13

times 510-($-$$) db 0
dw 0xaa55
