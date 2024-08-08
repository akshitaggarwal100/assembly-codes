.model small

.data
arr db 10h, 20h, 30h, 40h

.code
mov ax, @data
mov ds, ax

mov cx, OFFSET arr

mov al, [cx]

   

mov bl, [cx+1]

    

mov ah, [cx+2]

    

mov bh, [cx+3]



mov ah, 4ch
int 21h

end