.model small
.stack 100h
.data          

.code  

main proc 
    
    mov ax, @data
    mov ds, ax
    
    mov ax, -5
    
    cmp ax, 0
    jl less 
    jmp exit 
    
    
less:  

    mov bx, -1
    
   
exit:  

    mov ah, 4ch
    int 21h
    main endp 

end main