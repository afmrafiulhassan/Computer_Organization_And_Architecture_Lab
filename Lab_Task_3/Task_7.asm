.model small
.stack 100H
.data
.code

main proc 
    
    mov ax, @data
    mov ds, ax

    mov al, 2

    cmp al, 1
    je print_o
    
    cmp al, 3
    je print_o
    
    cmp al, 2
    je print_e 
    
    cmp al, 4
    je print_e

    jmp exit

print_o:  

    mov dl, 'o'
    jmp print_char

print_e:

    mov dl, 'e'  
    jmp print_char

print_char:  

    mov ah, 2
    int 21h

exit:   

    mov ah,4ch
    int 21h
    main endp 

end main