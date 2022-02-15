
.model small
.stack 100h
.data
nl equ 10,13
s1 db 'TH*S* G*S* AR* B*ASTS$'
s2 db 23 dup('$') 
msg db nl, 'before: $' 
msg2 db nl, 'after: $'
.code

main proc
     mov ax,@data
    mov ds, ax
    mov es, ax
    lea si, s1
    lea di, s2
    cld
    mov cx,22
    
     
    lea dx,msg
    mov ah,9
    int 21h
    lea dx,s1 
    int 21h
    
    remove:
    mov ah,s1[si]  
    cmp ah,'*'
    je remove2
    movsb
    loop remove
     
  
    
    mov ah,2
    mov dl,nl
    int 21h
    
    print: 
    lea dx,msg2
    mov ah,9
    int 21h  
    lea dx,s2
    int 21h
    jmp exit 
    
    
    remove2:
    mov s1[si],'E'
    movsb
    ;add si,1
    jmp remove  
    
    exit:
    mov ah,4ch
    int 21h
    main endp
 end main