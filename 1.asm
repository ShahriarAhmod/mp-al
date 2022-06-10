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
     mov cl, al
     sub cl, 30h
     
     print " "
     
     mov ah, 1
     int 21h
     mov bh, al
     sub bh, 30h
     
     add bl, cl
     add bl, bh
     add bl, 30h
     
     printn ""
     
     mov ah, 2
     mov dl,bl
     int 21h
     
  main endp
 end main