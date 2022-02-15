.model small
.stack 100h
.data
tasty db 'HELLO$'
tasty2 db ?
nl equ 10,13
.code
main proc
    mov ax,@data
    mov ds, ax
    mov es,ax
    lea si,tasty
    lea di,tasty2
    mov cx,5
    loop1:
    mov bx,[si]
    push bx
    inc si
    loop loop1
    
    mov cx,5
    loop2:
    pop dx
    mov ah,2   
    int 21h
    loop loop2
    
    endfun:
    mov ah,4ch
    int 21h
    main endp
end main   