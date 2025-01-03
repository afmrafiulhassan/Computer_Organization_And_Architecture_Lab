.model small
.stack 100h
.data
.code

main proc  
    
    mov cx,49
    mov ax, 1
    mov bx, 4
    mov dx, 1
                    
                    
level1:
    
    add ax,bx
    add dx,ax
    loop level1
       
       
    mov ah,4ch
    int 21h
    main endp  

end main