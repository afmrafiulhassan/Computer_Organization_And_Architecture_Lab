.model small
.stack 100h
.data
.code

main proc  
    
    mov cx,256
    mov ah, 2
    mov dl, 0
                    
                    
level1:
    
    int 21h
    inc dl
    dec cx
    jnz level1
       
       
    mov ah,4ch
    int 21h
    main endp  

end main