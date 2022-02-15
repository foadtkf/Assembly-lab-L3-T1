.model small
.stack 100h
.code
main proc
    mov bl,bl  
    
    mov ah,1
    inploop:
    int 21h 
    cmp al,0dh
    je printfun
    add bl,al 
    sub bl,48
    loop inploop
    
    printfun:
    mov ah,2
    mov dl,10
            int 21h
            mov dl,13
            int 21h 
    add bl,48
    mov dl,bl
    int 21h
            
    mov ah,4ch
    int 21h
    main endp
end main