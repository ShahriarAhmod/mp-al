include emu8086.inc

.model small
.stack 100h
.data 
 
  a db ? 
  b dw ? 
  c db ?
  temp db ?
  arr db 100 dup(?)  
  freq db 100 dup(0h)
  
.code

 main proc 
    
    mov ax, @data
    mov ds, ax
    
    mov cx,0h
    mov si,0h 
    
    mov ah,1
    int 21h
    
    mov c,al
    sub c,30h
    mov cl,c 
    printn
    
    step:
          
    mov ah,1
    int 21h
    mov arr[si],al    
    
    mov bl,al
    mov bh,0h
    mov di,bx  
    
    
    sub di,30h 
    
    inc freq[di]
    
    inc si  
    
    print " "
    
    loop step
    
    mov cl,10
    mov si,0h
    
   

    
    
    sesh:  
    
    
    printn
    
    mov b,0h 
    
    step3:   
     
    mov a,0h     
    mov bl,freq[si]
    add bl,30h 
    
    
    cmp bl,32h 
    
    jae go
    jmp done
    
    go:  
    
    mov bx,si 
    add bl,30h 
    mov ah,2
    mov dl,bl
    int 21h
    inc a
    inc b   
    
    done:
    inc si
     
    cmp a,0h
    
    ja space
    jmp nospace
    space:
    print " "
    nospace:  
    
    loop step3
    
    cmp b,0h
    ja nai 
    
    print "No duplicate"
    
    
    nai:  
    mov cx,100
    mov si,0
    
    
 main endp  
 
end main