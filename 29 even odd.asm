.model small
.stack 100h
.data
od db 'odd$'
ev db 'even$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,1
    int 21h
    
    mov bl,al
    test bl,01h 
    mov ah,9
    jne odd
    
    even:
    lea dx,ev
    int 21h
    jmp endfun
    
    odd:
    lea dx, od 
    int 21h
    endfun:
    mov ah,4ch
    int 21h
    main endp
end main