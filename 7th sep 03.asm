.model small
.stack 100h
.data
nl equ 10,13 
mm db 5 dup (?)
mmm db nl,'its not a palindrome$' 

mmmm db nl,'its a palindrome$'

.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    mov si,0
    loop1:  
    mov ah,1
    
    int 21h
    mov mm[si],al
    inc si
    push ax
    loop loop1
  
     
     mov si,0
     mov cx,5
     output: 
     pop dx
     cmp dl,mm[si] 
     jne notpal
     inc si
     loop output
                
               pal:
               lea dx,mmmm
               mov ah,9
               int 21h
               jmp endfun
               
               
               
               notpal:
               lea dx,mmm
               mov ah,9
               int 21h
               jmp endfun
               
               
   endfun: 
   mov ah,4ch
   int 21h
   main endp
end main