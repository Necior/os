org 0x7C00

xor ax, ax
mov ds, ax

mov ah, 0x13
mov al, 0x01
xor bh, bh
mov bl, 0x07
mov cx, helloLen
mov dh, 0
mov dl, 0
mov bp, hello
int 0x10

hlt

hello db "Hello world!", 0x0D, 0x0A
helloLen equ $ - hello
times 510-($-$$) db 0
db 0x55
db 0xAA
