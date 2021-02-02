; to generate an overflow of an register and activate the overflow flag (O) in the FR, we have to assign a number that is 11111111 and 
; increment it by one. 11111111 = 255 + 1 = 256, which will result in an overflow

.model small 

.data 

.code
    main proc 
    ; mov cl, 255
    ; add cl, 1
       
    ; mov al, 2
    ; add al, 1     ; should take the Parity flag and set it to 1 since the result of add is 00000011 which is an even number of 1s
    
    ;mov al, 8
    ;add al, 8       ; 8 in binary is 00001000 so adding 8+8 creates a carry over bit from the lower part of the register 
                     ; 00001000 + 00001000 = 00010000 and the AC flag should be activated now 
                    
    mov ax, -32768   ; Since 8086 is a 16 bit register, that means the maximum number we can work with is a range between 2^8 = 65536 
    add ax, -1       ; which we divide by two because its a signed int, that means 65536/2 = 32768. If we go above 32768 or bellow -32768
                     ; the overflow flag will activate        
                    
    endp
    end main