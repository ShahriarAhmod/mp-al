include emu8086.inc

.model small
.stack 100h
.data 
 
  a dw 0 
  b dw 1
  fibo db 100 dup(?)  
  
.code

 main proc
    
    mov ax,@data
    mov ds,ax 
    
    ; number 9
    mov si,2
    mov fibo[0],0
    mov fibo[1],1
    
    mov cx,6
    
    pre:
       
    mov di,b
    mov bl,fibo[di] 
    mov di,a
    add bl,fibo[di]
    mov fibo[si],bl
    inc si
    inc a
    inc b
    
    loop pre
    
    mov ah,1
    int 21h 
    printn
    
    mov bl,al;
    sub bl,30h
    mov bh,0
    mov si,bx
       
    mov bl,fibo[si];
    add bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    
    
 main endp  
 
end main