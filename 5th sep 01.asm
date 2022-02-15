.model small
.stack 100h
.data
nl equ 10,13
msg1 db '?$'
msg2 db nl,'the sum of $'
msg3 db ' and $'
msg4 db ' is: $'
v1 db ?
v2 db ?
v3 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,2
    mov dl,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov v1,al
    int 21h
    mov v2,al
    add al,v1
    mov v3,al
   sub v3,48
    lea dx,msg2
    mov ah,9
    int 21h
    mov ah,2
    mov dl,v1
    int 21h
    lea dx,msg3
    mov ah,9
    int 21h
    mov ah,2
    mov dl,v2
    int 21h
    lea dx,msg4
    mov ah,9
    int 21h 
    mov ah,2
    mov dl,v3
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main