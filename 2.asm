include emu8086.inc

.model small
.stack 100h
.data

.code

    main proc
        
        MOV ah, 1
        int 21h
        MOV bl, al
        sub bl, 30h
        
        print " "
        
        MOV ah, 1
        int 21h
        MOV cl, al
        sub cl, 30h
       
        
        CMP bl, cl
        JG large
        JMP large1
        
        
        large:
            printn ""
            add bl, 30h
            print "large number is: "
            MOV ah, 2
            MOV dl, bl
            int 21h
            JMP END
        
        large1:
            printn ""
            add cl, 30h
            print "large number is: "
            MOV ah, 2
            MOV dl, cl
            int 21h
            JMP END    
        
        END:
            main endp
        
        
        
        
end main
    