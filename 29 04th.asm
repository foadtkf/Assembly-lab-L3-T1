.model small
.stack 100h
.data
v1 db ?
v2 db ?
v3 db ?   
msg db 'large one is: $'
.code
main proc           
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov v1,al
    
    int 21h
    mov v2,al
    
    int 21h
    mov v3,al
    
    mov bl,v2 
    cmp v1,bl
    jg v1g
    jl v2g
    
    mov bl,bl
    
    v1g:
    mov bl,v3
    cmp v1,bl 
    jg v1p
    jmp v3p
    
    v2g: 
    mov bl,v3
    cmp v2,bl
    jge v2p
    jl v3p
    
    v1p:
    lea dx,msg
    mov ah,9
    int 21h
    mov ah,2
    mov dl,v1
    int 21h
    jmp endfun
    
    v2p:
    lea dx,msg
    mov ah,9
    int 21h
    mov ah,2
    mov dl,v2
    int 21h
    jmp endfun
    
    v3p:
    lea dx,msg
    mov ah,9
    int 21h
    mov ah,2
    mov dl,v3
    int 21h
    jmp endfun  
    
    endfun:
    mov ah,4ch
    int 21h
    main endp
end main