.model small 
.data

.code 
main proc
    mov dl, 3
    inc dl      ; the increment command increments the value inside the register by 1, it cannot increment more than by 1
   ;dec dl        would decrement the vaule of dl register by 1
    add dl, 48
    
    neg dl      ; what we do where is we create a negative number from the dl register, which in our case is 3 + 1 + 48 = 52. 
                ; we write 52 in binary 00110100, we invert that number 11001011 and we add 1 to it, 11001100 which is -52, 
                ; in hex it should be CC and it will print a character from the ASCII table  
    
    mov ah, 2h
    int 21h 
endp
end main

