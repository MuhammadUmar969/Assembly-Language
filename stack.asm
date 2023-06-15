.model small
.stack 100h 
.data
m1 db "owais$"
.code
start:
	mov ax,@data
	mov ds,ax 

	mov si,offset m1
	
	mov cx,5
	
l1:
	mov bx,[si]
	push bx
	inc si
loop l1
	
	mov cx,5
	
l2:
	pop dx
	mov ah,02
	int 21h
loop l2

	mov ah,4ch 
	int 21h
	
end start
