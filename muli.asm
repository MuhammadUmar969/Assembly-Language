.model small
.stack 100h
.data
 msg1 db "Enter Multiplicand: $"
 msg2 db "Enter Multiplier: $"
 num1 db ?
 num2 db ?
 result db ?
.code

start:
 mov ax,@data
 mov ds,ax
 
 mov ah,09
 lea dx,msg1
 int 21h
 
 mov ah,01
 int 21h
 
 sub al,30h
 
 mov num1,al
 
 mov ah,09
 lea dx,msg2
 int 21h
 
 mov ah,01
 int 21h
 
 sub al,30h
 
 mov num2,al
 
 mul num1
 
 mov result,al
 
 aam
 add ah,30h
 add al,30h
 
 mov bx,ax
 
 mov ah,02
 mov dl,bh
 int 21h
 
 mov ah,02
 mov dl,bl
 int 21h
 

 mov ah,4ch
 int 21h
end start