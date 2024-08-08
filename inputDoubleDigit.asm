.code

mov ah, 08h
int 21h 
sub al, 30h
mov bl, 10h
mul bl   

mov bl, al  
mov ah, 08h
int 21h    
sub al, 30h

add al, bl


ret