.model small
.stack 100h 
.data
d1 db dup '$'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea si,d1
    
    mov cx,4
    l1:
    mov ah,1
    int 21h
    mov d1[si],al 
    movsb
    loop l1 
    
    
    
    lea dx,d1
    mov ah,9
    int 21h