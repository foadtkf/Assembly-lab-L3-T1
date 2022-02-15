.model small
.stack 100h
.data 
nl equ 10,13
msg1 db 'enter a hex digit: $' 
msg2 db nl,'in decimal it is: $'
.code
main proc
   
   mov ax,@data
   mov ds,ax
   
   lea dx,msg1
   mov ah,9
   int 21h 
   mov ah,1
   int 21h
   
   
   
   cmp al,'A'
   je A
   cmp al,'a'
   je A
   cmp al,'B'
   je B
   cmp al,'b'
   je B 
   cmp al,'C'
   je C
   cmp al,'c'
   je C
   cmp al,'D'
   je D 
   cmp al,'d'
   je D
   cmp al,'E'
   je E  
   cmp al,'e'
   je E
   cmp al,'F'
   je F
   cmp al,'f'
   je F
  
   A:
   lea dx,msg2
   mov ah,9
   int 21h
   mov ah,2
   mov dl,'1'
   int 21h
   mov dl,'0'
   int 21h
   jmp endfun
   B:
   lea dx,msg2
   mov ah,9
   int 21h
   mov ah,2
   mov dl,'1'
   int 21h
   mov dl,'1'
   int 21h
   jmp endfun
   C:
   lea dx,msg2
   mov ah,9
   int 21h
   mov ah,2
   mov dl,'1'
   int 21h
   mov dl,'2'
   int 21h
   jmp endfun
   D:
   lea dx,msg2
   mov ah,9
   int 21h
   mov ah,2
   mov dl,'1'
   int 21h
   mov dl,'3'
   int 21h
   jmp endfun
   E:
   lea dx,msg2
   mov ah,9
   int 21h
   mov ah,2
   mov dl,'1'
   int 21h
   mov dl,'4'
   int 21h
   jmp endfun
   F:
   lea dx,msg2
   mov ah,9
   int 21h
   mov ah,2
   mov dl,'1'
   int 21h
   mov dl,'5'
   int 21h
   jmp endfun
    
   
   
    
    
    endfun:
    mov ah,4ch
    int 21h
    main endp
end main