include emu8086.inc

.model small
.stack 100h
.data 
 
  a db ? 
  b dw ?
  temp db ?
  arr db 100 dup(?)
  
.code

 main proc 
    
    ; number 7
    mov cx,0h
    mov si,0h 
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,30h
    mov cl,bl 
    printn
    
    step:
          
    mov ah,1
    int 21h
    mov arr[si],al
    inc si
    print " "
    
    loop step
    
    mov cl,bl
    mov si,0h
    
    step1:
          
    mov a,cl
    
    mov di,si 
    
    mov cl,bl
    sub cx,di 
    mov ch,0h
    
       step2:   
             
          
          mov al,arr[si]
          mov dl,arr[di] 
          cmp al,dl 
          
          ja go
          jmp nothing
          
          go:
          
          mov bh, arr[si] 
          mov arr[si],dl
          mov arr[di],bh
          
          nothing:
          
          inc di
          
          
       
       loop step2 
       
    mov cl,a
    
    inc si
    
    loop step1
    
    sesh: 
    
    printn 
    
    mov cl,bl 
    mov si,0
    
    step3:
          
    mov ah,2
    mov dl, arr[si]
    int 21h
    inc si
    print " "
    
    loop step3
    
 main endp  
 
end main