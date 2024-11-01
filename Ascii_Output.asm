.model small
.stack 100H
.data

msg db 82
msg1 db 65
msg2 db 70
msg3 db 0
msg4 db 3  
msg5 db ?

.code 

main Proc    
    
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,msg
    int 21h
    
    mov ah,2
    mov dl,msg1
    int 21h
    
    mov ah,2
    mov dl,msg2
    int 21h   
    
    mov ah,2
    add msg2, 3
    mov dl,msg2
    int 21h
            
    mov ah,2
    mov dl,msg3
    int 21h
    
    mov ah,2
    mov dl,msg4
    int 21h  
    
        
        
    mov ah,4ch
    int 21h
    main endp  

end main

