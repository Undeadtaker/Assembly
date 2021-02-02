
.model small

.data

.code

main proc
    
    mov cx, 5
    mov bx, 5
    
    for1:
        
        dec bx
        mov dl, 53
        mov ah, 02h
        int 21h
               
        
    for2:
        
        mov dl, 54
        mov ah, 02h 
        int 21h     
         
    
    loop for2
    
    mov cx, bx
    inc cx
    
    loop for1
    
    
    endp
    end main

