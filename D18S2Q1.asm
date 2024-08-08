.model small

.data
var1 db 50
var2 db 30

.code
mov ax, @data
mov ds, ax

mov al, var1
mov ah, var2

add al, ah
lahf

mov ah, 4ch
int 21h

end