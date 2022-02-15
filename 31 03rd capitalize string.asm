
.model small
.stack 100h
.data
nl equ 13,10
S1 db 'this is a message$'
S2 db 19 dup('$') 
.code

main proc
    mov ax,@data
    mov ds, ax
    mov es,ax
    lea si,S1
    lea di,S2
    
    mov cx,17
    mov si,si
    
    and S1[si],223 
    movsb
    l1:
    cmp S1[si],' '
    jne skip
    movsb
    and S1[si],223
    loop l1
    
    print:
    lea dx,S2
     mov ah,9
     int 21h
     
     
    
    jmp exit
    
    skip: 
     movsb
    loop l1
    jmp print
    exit:
    mov ah,4ch
    int 21h
    main endp
end main      