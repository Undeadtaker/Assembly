; conditional jumps are the most similar thing we can find to an if statement in assembly. We have 4 conditional jumps

; 1) jc  - Jump if carry flag is set (1)
; 2) jnc - Jump if not carry flag (0)
; 3) jz  - Jump if zero flag is (1)
; 4) jnz - Jump if not zero flag (0)



.model small

.data

.code     

main proc

    mov al, 4
    cmp al, 5       ; The result should set the carry flag to 1, meaning we can use the jc
    
    jc movb         ; we use the jump if carry instruction here to jump to label movb
    
    mov bx, 12      ; this line will be skipped since we jmp over it
    
    movb:
        mov bx, 50  ; this line should now execute
        nop
        nop
        hlt
    
    
    
    
endp
end main
