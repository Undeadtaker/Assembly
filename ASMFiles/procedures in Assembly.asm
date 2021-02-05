.model small

.data

.code  


first proc             ; every process should begin with its name, after that have the name proc that signals the beginning of the process
           
    mov dl, 51         ; the first procedure changes the value of the dl reg to 51 (hex 3) 
   
       
;   jmp jump           ; this would be an illegal statement. We can't jump from one process to another ones' label. 


    ret                ; every process should have a ret word in it (return), except the main process 
first endp             ; we end the process with its name and the word endp



main proc              ; the word proc actually means procedure and this is the main procedure where the code is executed.
                       ; the concept of procedures is actually somewhat similar to methods, where this main proc is the main method
     mov dl, 53
     mov ah, 02h
     int 21h            
     
     call first        ; How we actually call the procedure,    
     int 21h           ; print to screen again
     hlt               ; command to halt the CPU cycle
     
        
;    label:
;    label::           ; the jump label is now global, meaning it can be accessed from everywhere. BUT IT IS NOT RECOMMENDED AT ALL!!!     
    
endp                   ; the endp means that we end the main process, not the whole program! If we want to write more processes
                       ; we should write them after endp and before endmain

end main



