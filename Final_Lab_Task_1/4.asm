.model small
.stack 100h
.data  

msg1 db 'Enter a character: $'   

.code

main proc   
    
    mov ax, @data
    mov ds, ax
    
    mov ah,9h
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    mov cx,50
    mov ah,2    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
                    
                    
level1:   
   
    mov ah, 2
    mov dl,bl
    int 21h
    loop level1
       
       
    mov ah,4ch
    int 21h
    main endp  

end main