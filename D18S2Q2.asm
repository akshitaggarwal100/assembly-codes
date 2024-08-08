.model small

.data
var1 db 02h
var2 db 03h
var3 db 04h
var4 db 05h

.code
mov ax, @data
mov ds, ax

mov al, var1
mov bl, var2
mov cl, var3
mov dl, var4

cmp al, bl
jge checkCL
xchg al, bl

checkCL:
cmp al, cl
jge checkDL
xchg al, cl

checkDL:
cmp al, dl
jge done
xchg al, dl

done:
mov ah, 4ch
int 21h

end