.model small
.stack 100H
.data
a db 'Lab Task$'       ; this "$" sign indicates the end of string, before that the value will execute or we can use '$'.
.code             



main proc   
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9    ;9 used for character string output.
    lea dx,a    ;lea= Load Effective Address.
    int 21h                     
    
    mov ah,2    ;creates a new line
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h   
    
    mov cx,6
    mov ah,2
    mov dl,4
         
         
level1:

    int 21h
    inc dl
    loop level1   
    
    mov ah,4ch
    int 21h
    main endp 
end main
