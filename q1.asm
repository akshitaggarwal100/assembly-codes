.model small

.data
var1 db 04h, 02h, 0h, 03h

.code
mov ax, @data
mov ds, ax

mov al, [var1]
mov bl, [var1+1]
mov ah, [var1+2]
mov bh, [var1+3]

add ax, bx
mov bx, 02h
mov cx, 01h
div bl

;mov dl, al

mov ah, 4ch
int 21h

end

ret