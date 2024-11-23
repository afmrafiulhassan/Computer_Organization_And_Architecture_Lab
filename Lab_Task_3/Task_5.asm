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
    jge skip

    mov dx, 0
    jmp exit

skip:   

    cmp bx, cx
    jge dec_one

    mov dx, 0
    jmp exit

dec_one: 

    mov dx, 1

exit:    

    mov ah,4ch
    int 21h
    main endp

end main