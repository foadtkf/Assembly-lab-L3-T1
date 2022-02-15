.model small
.stack 100h 
.data
quotient db 'quotient is: $'
remainder db 'remainder is: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,0
    
    mov ax,26
    mov bl,5
    div bl
    mov cl,al
    add cl,48
    mov ch,ah
    add ch,48
    lea dx,quotient
    mov ah,9
    int 21h
    mov dl,cl
    mov ah,2
    int 21h
    
    call newline
    lea dx,remainder
    mov ah,9
    int 21h 
    mov dl,ch 
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h
    main endp
newline proc
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    ret 
    newline endp