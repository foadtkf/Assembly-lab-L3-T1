.model small
.stack 100h 
.data
s1 db 'h e l l o$'
s2 db 9 dup (?)
.code
main proc
    
          
          mov ax,@data
          mov ds,ax
  
  mov ds,ax
  mov es,ax
  lea si,s1
  lea di,s2
         cld
         
         
         
         mov cx,9
         
         sub s1[si],32
         movsb
         
         l1:
         cmp s1[si],' '
         jne skip
         movsb
         sub s1[si],16
         movsb
         loop l1
         
         print:
         lea dx,s2
         mov ah,9
         int 21h
         jmp endfun
         
         skip:
         movsb
         loop l1
         
         endfun:
         mov ah,4ch
         int 21h
  main endp
end main