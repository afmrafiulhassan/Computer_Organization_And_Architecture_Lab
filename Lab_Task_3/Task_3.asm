.model small
.stack 100h
.data
.code

main proc   
    
    mov ax, @data      
    mov ds, ax
   
    mov dl, 082        

    cmp dl, 'A'        
    jl skip_print
         
    cmp dl, 'Z'        
    jg skip_print     
    
    mov ah, 2           
    int 21h

skip_print:


exit:      

    mov ah, 4ch       
    int 21h
    main endp

end main