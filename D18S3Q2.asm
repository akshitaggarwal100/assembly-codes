.model small

.data
var1 db 29h
var2 db 32h
var3 db 35h
var4 db 39h
var5 db 21h
found db "found", "$"
notFound db "not found", "$"

.code
mov ax, @data
mov ds, ax

mov al, var1
cmp al, 35h
jg done

checkV2:
mov al, var2
cmp al, 35h
jg done

checkV3:
mov al, var3
cmp al, 35h
jg done

checkV4:
mov al, var4
cmp al, 35h
jg done

checkV5:
mov al, var5
cmp al, 35h
jg done
lea dx, notFound
mov ah, 09h
int 21h
mov ah, 4ch
int 21h

done:
lea dx, found
mov ah, 09h
int 21h


mov ah, 4ch
int 21h

end