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
    jge check_bx_cx  

    mov ax, 0        
    jmp exit 

check_bx_cx:  

    cmp bx, cx       
    jge set_cx_zero  

    mov bx, 0        
    jmp exit 

set_cx_zero:  

    mov cx, 0        
         
         
exit:
    mov ah,4ch
    int 21h
    main endp 

end main