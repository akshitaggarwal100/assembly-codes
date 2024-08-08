.model small

.data
var db 04h

.code
mov ax, @data
mov ds, ax  
mov dl, var
add dl, 02h
mov var, dl 

mov ah, 4ch
int 21h

end
