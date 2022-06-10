include emu8086.inc

.model small
.stack 100h
.data
    a db ?
    arr db 100 dup(?)
    
.code

main proc
    MOV ax, @data
    MOV ds, ax
    
    MOV ah, 1
    int 21h
    mov bl, al
    mov cx, bx
    sub cx, 30h
    
    
    mov si, 0
    
    printn
    loop1:
       mov ah, 1
       int 21h
       mov arr[si], al
       sub arr[si], 30h
       inc si
       print " "
       loop loop1
       
    printn
    
    mov cx, 4
    ;sub cx, 30h
    mov si, 0
    mov bl, 0h
    sub bl, 30h
    
    output:
        CMP arr[si], bl
        jge max
        incre:
            inc si
            loop output
        
        
        
            
            add bl, 30h
            mov dl, bl
            mov ah, 2
            int 21h
            
          max:
          mov bl, arr[si]
          jmp incre 
         
    
        main endp
   
    
                     
     
end main
            
       
      
        