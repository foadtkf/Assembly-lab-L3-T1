.model small 
.stack 100h
.data 
nl equ 10,13,10      
    msg db 'enter three numbers: $'
    v1 db ?
    v2 db ?
    v3 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov v1,al
    int 21h
    mov v2,al
    int 21h
    mov v3,al
    
    
    mov ah,2
    mov dl,nl
    int 21h
    mov dl,v1
    int 21h
    mov dl,v2
    int 21h
    mov dl,v3
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    