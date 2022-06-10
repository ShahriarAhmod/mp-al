include emu8086.inc
.model small
.stack 100h
.data
    var1 db ?
    var2 db ?
.code

main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 1
    int 21h
    mov var1, al
    
    
    printn ""
    
    mov ah, 1
    int 21h
    mov var2, al
    
    printn ""
    
    
    mov bl, 01h
    add bl, 30h
    
    CMP var2, bl
    JE asc
    JMP dsc
    
    asc:
       mov dl, bl
       mov ah, 2
       int 21h
       print " "
       
       CMP dl, var1
       JE EXIT
       INC bl
       JMP asc
       
    dsc:
        mov dl, var1
        mov ah, 2
        int 21h
        print " "
       
        CMP dl, bl
        JE EXIT
        DEC var1
        JMP dsc 
        
    EXIT:
        main endp
end main
            