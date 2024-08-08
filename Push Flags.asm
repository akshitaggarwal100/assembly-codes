data segment
    sf dw ?

 code segment
    mov dl, 4
    add dl, 48
    
    mov dh, 5
    add dh, 48
    
    mov ah, 02h
    int 21h
    
    pushf ; pushes the status of flags to stack
    pop sf ; retrieves the data from top of stack into sf variable
    push sf ; pushes sf to top of stack
    popf ; retrieves the status of flags from top of stack to flags register

ret