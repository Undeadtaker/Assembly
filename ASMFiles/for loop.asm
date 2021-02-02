.model small

.data

.code 

main proc
    
    mov cx, 5           ; the cx register is a specific purpose register, whose value is used to specify the amount of iterations of 
                        ; an loop operation
     
    for:                ; here we create a code block for the loop, called "for"
        mov dl, 53
        mov ah, 02h     ; we print a random number to screen
        int 21h             
    
    
    loop for            ; here to loops back to the "for" code block, the first thing it does is compare the value in the cx register to 0
                        ; after which if it is not, decrement itself by 1. So in total, we should print a character to the screen 5 times
      
      
      
    
    endp
    end main


