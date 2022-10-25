.model small
.stack 100h                  
.data
                             
msg db "Enter an upper case letter: $"
msg1 db "In lower case it is: $"
str1 db "Enter first number: $"
str2 db 13,10,"Enter second number: $"
str3 db 13,10,"Enter third number : $"
str4 db 13,10,"The sum is: $"
.code

main proc
    mov ax,@data
    mov ds,ax      
    
    mov ah, 9h
    lea dx, msg
    int 21h

    mov ah, 1
    int 21h
    mov cl, al

    add cl, 32


    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah, 9h
    lea dx, msg1
    int 21h
    mov ah, 2
    mov dl, cl
    int 21h



    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    lea dx,str1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bl,al



    lea dx,str2
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bh,al



    lea dx,str3
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov ch,al



    sub bh,48
    sub bl,48
    sub ch,48



    lea dx,str4
    mov ah,9
    int 21h   
    add bh,bl
    add bh,ch
    add bh,48
    mov dl,bh 
    
    mov ah,2
    int 21h 
    
    
    
    mov ah,4ch
    int 21h
main endp
end