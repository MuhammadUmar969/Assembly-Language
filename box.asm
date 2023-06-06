.model small
.stack 100h
.data
.code

start:
 mov ax,6
 int 10h
 
 mov ah,0ch
 mov al,1
 mov cx,100
 mov dx,150
 
 L1:
 int 10h
 inc cx
 cmp cx,500
 jle L1
 
 mov ah,0
 int 16h
 
 mov ax,3
 int 10h
 
 mov ah,4ch
 int 21h
end start