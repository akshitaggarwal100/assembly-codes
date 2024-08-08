code segment
    
    jmp main
    
    albig:
    mov bl, 0
    ret
    
    blbig:
    mov al, 0
    ret
    
main:    
    mov al, 11001010b
    mov bl, 11001000b
    cmp al, bl
    jge albig
    jl blbig 
    
    
code ends   

ret