; For this program to work, we need to innitate a DOS (Disk Operating System) interrupt, specifically int 21h 
; Most of the general functions and services offered by DOS are implemented through this interrupt
; See the full list of all 21h dos function codes here: http://spike.scu.edu.au/~barry/interrupts.html

; 1) This org 100h defines where the machine code is going to be placed in memory.
;    As for org 100h, it means it deals with 80x86 COM program format (COMMAND)  

; 2) here we move the DOS interrupt function code 09h into the register ah, if we look at the 21h interrupt codes, we see that 09h 
;    translates to WRITE STRING TO STANDARD OUTPUT or <<stdout<<. So we are saying output the following string called message                             

; 3) offset is here so that it reserves for a variable, move to register dx, 
;    symbol '$' indicates that it's the end of the string

; 4) we place this here at the end to initiate the 21h DOS interrupt, and we put it at every end            
                             
; 5) if we look at the 21h interrupt codes we see that the code 4ch translates to "EXIT" - TERMINATE WITH RETURN CODE.                                
;    we override the ax register higher with the exit command and the lower with 00

; db = define byte - allocates 1 byte
; dw = define word - allocates 2 bytes
; dd = define doubleword - allocates 4 bytes
; dq = define quadword - allocates 8 bytes
; dt = define ten bytes - allocates 10 bytes          

; 1)
.model tiny
.code
org 100h

main proc near 

; 2)    
mov ah,09h
; 3)   
mov dx,offset message       
; 4)
int 21h  

; 5)
mov ah,4ch               
mov al,00
int 21h


endp                            ; end program
message db "Hello World$"       ; here we say the variable message is db string and allocate 1 byte to it                      

end main