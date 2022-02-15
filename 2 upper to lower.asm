.model small
.stack 100h
.code
main proc 
    
     mov ah,1
     int 21h
    mov bl,al
    mov cl,91
    cmp bl,cl   
    jle next  ;if user gives lowercase letter, jump to next function
    sub bl,32 ;if user gives uppercase letter, rest of the code will be executed and will jump to endfun just before the next function
    mov ah,2
    mov dl,bl
    int 21h 
    jmp endfun
    next: 
    mov ah,2  
   add bl,32
    mov dl,bl
    int 21h
    
    
    endfun:
    mov ah,4ch
    int 21h
    
   
    
    main endp
end main