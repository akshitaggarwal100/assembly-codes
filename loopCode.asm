.code 

mov cx, 5
mov bx, 5

outside:
   
 mov dl, 4
 add dl, 48

 mov ah, 02h
 int 21h 
 
 mov cx, 5

 inside:

  mov dl, 5
  add dl, 48

  mov ah, 02h
  int 21h  
            
 loop inside
 
 dec bx
 mov cx, bx
            
loop outside

ret

;2 42 0
;2 21 1
;2 10 0
;2 5  1
;2 2  0
;  1
  
;binary form(8 bit) = 00101010
;max number = 255

;binary coded decimal(8 bit) = 0100 0010
;max number = 99