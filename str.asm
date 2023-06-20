.model small
.stack 100h
.data
  text1 db "hello$"
  text2 db 5 dup('0$')
 
.code

start:
  mov ax,@data
  mov es,ax
  mov ds,ax

  lea di,text1
  
  cld
  mov cx,5
  mov al,'A'
  repne stosb
  
  mov ah,09
  mov dx,offset text1
  int 21h
  

  std
  
  mov cx,5

  move:  
  movsb
  add di,2
  loop move
  
  mov ah,09
  mov dx,offset text2
  int 21h
  
  mov ah,4ch
  int 21h
end start