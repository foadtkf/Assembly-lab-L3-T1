.model small
.stack 100h
.data 

.code
main proc
    mov cx,5
    loop1: 
    mov ah,1
    int 21h
    push ax 
    loop loop1
               
               mov ah,2
               mov dl,10
               int 21h
               mov dl,13
               int 21h
    mov cx,5
    loop2:
    pop dx
    mov ah,2
    int 21h
    loop loop2
   mov ah,4ch
   int 21h
   main endp
end main