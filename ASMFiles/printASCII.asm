.model small

.data     

    num1 db 2

.code 
main proc
    
    mov dl, num1  ; This is now a decimal value of 50, in the ASCII table it is the value of 2, so 2 will be printed. 
                  ; The hex for 2 is 32h, so we could do mov dl, 32h and get the same result. The value printed will always be ASCII
    
    add dl, 48    ; adding 2 to the dl register, so now it should have a value of 52
                
    mov ah, 2h  ; 02h WRITE CHARACTER TO STANDARD OUTPUT from dl 
    int 21h

endp
end main

; to add a value to a register we use add <dest> <value/src> 
; to subtract a value from a register we use sub <dest>, <value/src>