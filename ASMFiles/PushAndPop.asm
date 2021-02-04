.model small

.data
    flagstatus dw ?    ; Here we create a variable flagstatus that is dword or 2 bytes in memory whose type is not defined


.code
main proc
    
    mov ax, 1             ; we assign the value 1 to the ax reg
    push ax               ; we then push ax on top of the stack where it remains
    pop cx                ; finally we take the top value from the stack and place its value in the cx reg
                       
                       
; We can also save the the status of the flag reg using the pushf command 


    pushf                 ; we push the status of the flags onto the top of stack
    pop flagstatus        ; we pop the latest item from the stack and into the variable flagstatus
                  
    push flagstatus       ; we push the variable onto the stack 
    popf                  ; we set the status of the flags to be equal to what is on the stack
    
    endp
    end main

