
.model small
.stack 100h
.data
nl equ 13,10
S1 db 'EXAM$'
S2 db 5 dup('$') 
msg1 db 'STRING1: $'
msg2 db nl,'STRING2: $'
.code

main proc
     mov ax,@data
    mov ds, ax
    mov es,ax
    lea si, S1
    lea di, S2
    cld
    mov cx,4
    
    lea dx,msg1
    mov ah,9
    int 21h
    lea dx,s1   
    int 21h
    
    copy:
    mov ah,S1[SI]  
    movsb
    loop copy
      
    
    
    
    print:
    lea dx,msg2
    mov ah,9
    int 21h   
    lea dx,S2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main