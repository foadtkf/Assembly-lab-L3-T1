.model small   
.stack 100h
.code
main proc 
    mov bl,48 
  
daddy:
  mov ah,1
  int 21h
  cmp al,32
  je daddy
  cmp al,0Dh
  je print 
  inc bl 
  loop daddy
  
print:
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h 
   
main endp
end main
           