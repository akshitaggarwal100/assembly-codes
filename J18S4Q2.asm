.model small

.data
arr db 10, 20, 30, 40

.code
mov ax, @data
mov ds, ax

mov cl, OFFSET arr

mov al, [cx]
 
mov bl, [cx+1]

mov ah, [cx+2]
 
mov bh, [cx+3]

mov dx, ax
add dx, bx

mov ah, 4ch
int 21h

end