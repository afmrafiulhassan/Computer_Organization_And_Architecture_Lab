.model small
.stack 100H
.data
.code  

main proc 
    
    mov ax, @data      
    mov ds, ax
    
    mov ax, 5        
    mov bx, 6          
    mov cx, 7         
   
    cmp ax, bx
    jge skip_1       
    
    cmp bx, cx
    jge skip_2       
   
    mov ax, 0
    jmp exit  

skip_2:  

    mov bx, 0
    jmp exit   

skip_1:  
 
    jmp exit

exit:       

    mov ah,4ch
    int 21h
    main endp  

end main