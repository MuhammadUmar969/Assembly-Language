.model small
.stack 100h
.data
   uk db 10, "Umar$"
.code

start:
     mov ax,@data
	 mov ds,ax
	 mov cx,10
	 
	 l1:
	 mov ah,09
	 mov dx,offset uk
	 int 21h
	 loop l1
	 
	 mov ah,4ch
	 int 21h
end start