.model small

.data

.code

main proc
    
    label:             ; here we create a code block, which will go through moving the hex value for 5 into the dl register
        
        mov dl, 53
        mov ah, 02h    ; here we specify the interrupt for printing a character to the screen
        int 21h        ; here we specify the 21h interrupt group
    
    
    jmp label          ; finally, here is our jump operation. We jump to the label code block, and so we create an infinite loop in essence 
    
    
    
    endp
    end main




