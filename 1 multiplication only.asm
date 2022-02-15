.model small
.stack 100h
.data
msg db '1.sum  2.subtract  3.multiply  4.division$'
.code
main proc  
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h 
    
            mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h
    mov ah,1
    int 21h 
    
    cmp al,'1'
    je sumf  
    cmp al,'2'
    je subtractf 
    cmp al,'3'
    je mulf
    je divf
    jmp endfun
    
    
    sumf:
    call sum
    jmp endfun     
    subtractf:
    call subtract
    jmp endfun
    mulf:
    call multiply
    jmp endfun
    divf:
    call division
    jmp endfun
    
    
    endfun: 
    mov ah,4ch
    int 21h
    main endp
sum proc
            mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h
mov ah,1
int 21h
mov bl,al
int 21h 
add bl,al 
sub bl,48
            mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h
mov dl,bl
int 21h

mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h 
ret
sum endp
subtract proc 
            mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h
mov ah,1
int 21h
mov bl,al
int 21h 
sub bl,al 
add bl,48
            mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h
mov dl,bl
int 21h 
ret
subtract endp 
multiply proc
                 mov ah,2 
            mov dl,10
            int 21h
            mov dl,13
            int 21h 
mov al,2
    mov bl,9
    mul bl
    aam 
    mov ch,ah
    mov cl,al
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    mov dl,cl
    add dl,48 
    int 21h 
    ret
    multiply endp 
division proc
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
    mov dl,cl
    mov ah,2
    int 21h
    mov dl,ch 
    mov ah,2
    int 21h
ret 
division endp
end main