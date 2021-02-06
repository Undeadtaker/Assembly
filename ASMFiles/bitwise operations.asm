.model small

.data

.code
main proc
                           ; IMPORTANT NOTE: the size of the AND entities have to be the same, so 8bit must go with 8 bit registers!!!
    mov ah, 00000001b      ; mov the binary value of 1 into ah 
    mov bh, 00000101b      ; mov the binary value of 5 in bh  
    and bh, ah             ; perform binary AND operand and store into bh reg, so and dest, src.
    
    mov ah, 01010101b
    mov bh, 10101010b
    or ah, bh              ; this should perform a bitwise or operation resulting in 11111111b
    
    mov ah, 01011111b
    mov bh, 10101111b
    xor ah, bh             ; performing xor bitwise operation aka real or, resulting in 11110000b
    
    mov ah, 10101100
    not ah, bh            ; performing not bitwise, thus getting 01010011b
    
    nop
    nop
    hlt
    
endp
end main

