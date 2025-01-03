.model small
.stack 100h
.data
.code

main proc  
    
    mov cx,19
    mov ax,100
    mov bx,5
    mov dx,100
                    
                    
level1:
    
    sub ax,bx
    add dx,ax
    loop level1
       
       
    mov ah,4ch
    int 21h
    main endp  

end main