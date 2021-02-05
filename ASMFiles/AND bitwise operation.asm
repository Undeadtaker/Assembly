.model small

.data

.code
main proc
                           ; IMPORTANT NOTE: the size of the AND entities have to be the same, so 8bit must go with 8 bit registers!!!
    mov ah, 00000001b      ; mov the binary value of 1 into ah 
    mov bh, 00000101b      ; mov the binary value of 5 in bh  
    and bh, ah             ; perform binary AND operand and store into bh reg, so and dest, src.
    nop
    nop
    hlt
    
endp
end main

