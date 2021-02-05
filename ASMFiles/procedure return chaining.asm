.model small

.data

.code

proc1 proc             ; the proc1 procedure 
    
    call proc2         ; here we call proc2
    ret                ; here we return to main (2)
proc1 endp

proc2 proc             ; the proc2 procedure
    
    ret                ; here we return to proc1 (1)
proc2 endp


main proc              ; the main procedure
    
    call proc1         ; here we call proc1
    nop                ; here we execute after the two return calls (3) thus getting main -> proc1 -> proc2 back to proc2 -> proc1 -> main
    nop                
    hlt                
        
endp
end main
