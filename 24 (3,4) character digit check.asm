.model small
.stack 100h
.data
digt db 'it is a digit $'
char db 'it is a character $'
.code 


main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov cl,al
    cmp cl,'0'
    jle charpr
    cmp cl,'9'
    jle digpr
    jge charpr 
    
    call newline
    digpr:
    call newline
    lea dx,digt
    mov ah,9
    int 21h 
    jmp endfun
    
    charpr:
    call newline
    lea dx,char
    mov ah,9
    int 21h  
    
    endfun:
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
end main
