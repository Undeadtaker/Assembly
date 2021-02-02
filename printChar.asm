
.model small
.data
.code 

    mov ah, 1h   ; 01h DOS interrupt for READ CHARACTER FROM STANDARD INPUT, WITH ECHO, character stored in al not ah! ah is for read only!
    int 21h      ; execute the 21h interrupt
    
    mov dl, al   ; move the character from al to dl 
    mov ah, 2h   ; 02h DOS interrupt for WRITE CHARACTER TO STANDARD OUTPUT, goes to dl register for the character, that's why we moved
                 ; the content from al to dl
                 
    int 21h      ; exectue the 21h interrupt
    
end              ; end
 


