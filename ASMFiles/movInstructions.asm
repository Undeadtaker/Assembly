; Remember emu8086 is a 16 bit processor, therefore there are no 32 bit registers, meaning there is no eax, ebx, ecx etc.

; mov operation 
; mov destination, source 
; rules:
;   - both operands must be the same size  

;   - both operands cannot be memory operands, this means that we cannot copy two variables directly from one to another,
;       but we must copy the value of the first variable into a register and then copy from the register into another variable

;   mov var1, var2 -- Will not work!      

;   mov bx, var2 
;   mov var1, bx -- Will work!

  
;   - CS, EIP and IP registers cannot be the destination operands
;   - What we could also do is just zero out the larger register and then move the content of the smaller into the larger one

.model small
.data 
    var1 db 1  ; has a value of 1, databyte - 8 bits, so 00000001 
    
.code 
main proc
    mov ax, 0 
    mov al, var1    ; we moved it to ax register lower part, so now the ax register has a value of 1
endp
end main 