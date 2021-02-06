.model small

.data

.code
main proc

    mov ah, 01010001b        
    test ah, 01010001b       ; The test operation is very similar to the and operation. The main difference is that it doesn't store 
                             ; the result into the registers, rather the zero flag in the FR is toggled to 0 when both of the value
                             ; that's being tested is the same as the value being tested against. The zero flag is toggled to 1 when
                             ; they are not equal. In this case, the zero flag should be zero.
    
    test ah, 01010000b       ; In this case the zero flag is set to 1
                             
    

    
endp
end main
