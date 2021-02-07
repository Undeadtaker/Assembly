.model small

.data

.code
main proc

    ; The compare instruction compares the two values, the syntax is CMP destination, source. 
    ; The result of the compare instruction is in the flag register. 
    
    ; 1) If dest < src, the carry flag in the flag reg is set to 1
    ; 2) If dest > src, both the carry and zero flag are set to 0
    ; 3) If dest = src, the zero flag in the flag reg is set to 1 
    
    mov ax, 5123
    mov bx, 1234
    cmp ax, bx              ; since the dest is greater than the src, both the zero and carry flag are set to 0 
    
    cmp bx, ax              ; the dest is lesser than src, meaning the carry flag is set to 1
    
    mov ax, 1234
    cmp ax, bx              ; the dest is equal to src, meaning the zero flag is set to 1
    
    nop
    nop
    hlt
    
     
endp
end main
