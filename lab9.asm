.model small
.stack 100h 
.code
start:
mov dx,8
ror dx,3
add dx,48					
mov ah,2
int 21h
mov ah,4ch
int 21h
end start
