[org 0x7C00]
[bits 16]

loadKernel:
    mov ah, 02h
    mov al, 2h
    mov ch, 0
    mov cl, 2
    mov dh, 0
    mov bx, 1000h
    mov es, bx
    xor bx, bx
    int 13h
    jmp 1000h:0000h

times 510-($-$$) db 0
dw 0xAA55
