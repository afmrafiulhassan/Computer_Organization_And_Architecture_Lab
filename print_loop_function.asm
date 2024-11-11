.model small
.stack 100H
.data
.code             



main proc   
    mov ax,@data
    mov ds,ax
    
    
    mov cx,6
    mov ah,2
    mov dl,52
         
    
        
level1:

    int 21h
    inc dl
    loop level1   
    
    mov ah,4ch
    int 21h
    main endp 
end main
