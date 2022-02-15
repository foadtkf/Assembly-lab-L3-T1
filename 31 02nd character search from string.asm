.model small
.stack 100h
.data
nl equ 13,10
S1 db 'EXAM$' 
S2 db ?
msg1 db nl, 'FOUND!$'
msg2 db nl,'NOT FOUND! $'
.code

main proc
     mov ax,@data
    mov ds, ax
    mov es,ax
    lea si, S1
    cld
    mov cx,4
             
             
    comp:
    mov ah,1
    int 21h
    mov s2,al
    
    copy:
    mov ah,S1[si] 
    cmp ah,s2
    je matched
    inc si
    loop copy 
    
    notmatched:
    lea dx,msg2
    mov ah,9
    int 21h
    jmp exit
      
    matched:
    lea dx,msg1
    mov ah,9
    int 21h   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main