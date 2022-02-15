.model small
.stack 100h
.code
.data
ev db 'even number$'
od db 'odd number$'
main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    cmp al,'2'
    je even
    cmp al,'4'
    je even
    cmp al,'6'
    je even
    jmp odd
    even:
    lea dx,ev
    mov ah,9
    int 21h
    jmp endfun
    odd:
    lea dx,od
    mov ah,9
    int 21h
    jmp endfun
    endfun:
    mov ah,4ch
    int 21h
    main endp
end main