.model small
.stack 100h
.code 
main proc

;Addition
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
;Subtraction            
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

  
endfun:
mov ah,4ch
int 21h



main endp
end main