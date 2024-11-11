.model small
.stack 100H
.data
m db "I Love Assembly$"       ; this "$" sign indicates the end of string, before that the value will execute 
.code             



main proc   
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9    ;9 used for character string output.
    lea dx,m    ;lea= Load Effective Address
    int 21h  
    
    
    mov ah,4ch
    int 21h
    main endp 
end main
