.model small
.stack 100h
.data
fname db 'yys.txt',0
address dw ?
msg db 'Enter the Data $'
buffer db 100 dup('$') ;100 byte
.code
start:
mov ax,@data
mov ds,ax

mov ah,3dh
lea dx,fname
mov al,2   ;mode 2 for read and write  note: becareful for register al or cl it cause error 
int 21h

mov address,ax

;read a data from file
mov ah,3fh
lea dx,buffer
mov cx,100
mov bx,address
int 21h

lea dx,buffer
mov ah,09
int 21h 



mov ah,3eh
mov bx,address
int 21h 


mov ah,4ch
int 21h 

end start
