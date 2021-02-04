.model small

.data

.code
main proc
    
    
    mov ax, 5
    mov bx, 5
    mov cx, 5
    
    pusha          ; the pusha command takes the value of registers in order ax, cx, dx, bx, sp, bp, si, di and pushes them on top of stack
    
    mov ax, 1
    mov bx, 1
    mov cx, 1      
    
    popa           ; This should actually override the currently values of registers and set them equal to 5
    
    
    endp
    end main
