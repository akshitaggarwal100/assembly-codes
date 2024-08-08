.model small

.data
var db 10h 11h 12h 13h 15h

.code
mov ax, @data
mov ds, ax

mov al, var
mov bl, var + 1
mov cl, var + 2
mov dl, var + 3

cmp al, bl
jge albig
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

ret