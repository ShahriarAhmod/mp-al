include emu8086.inc
.model small
.stack 100h
.data
.code


main proc
    mov ah, 1
    int 21h
    
    mov bl, al
    sub bl, 30h
    
    print " "
    
    
    mov ah, 1
    int 21h
    
    MOV cl, al
    sub cl, 30h
    
    printn ""
    mov ah, 1
    int 21h
    
    mov bh, al
    
    
    mov ch, 01h
    add ch, 00
    add ch, 30h
    
    CMP bh, ch
    JE one 
    JMP two
    
    
    one:
        printn ""
        add bl, cl
        add bl, 30h
        
        mov ah, 2
        mov dl, bl
        int 21h
        JMP EXIT
        
        
    two:
        printn ""
        CMP bl, cl
        JE equal
        JG first
        JMP second
        
        equal :
             print "0"
             JMP EXIT
        first:
            SUB bl, cl
            add bl, 30h
            
            mov ah, 2
            mov dl, bl
            int 21h
            JMP EXIT
        second:
            SUB cl, bl
            add cl, 30h
            
            mov ah, 2
            mov dl, cl
            int 21h
            JMP EXIT
    
    
    EXIT:
        main endp

end main