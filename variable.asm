.model small
.stack 100h
.data
  Stars1 db "*$"
  Stars2 db 10, "**$" 
  Stars3 db 10, "***$"
  Stars4 db 10, "****$"
  Stars5 db 10, "*****$"

.code

 Umar:
 
 mov ax, @data
 mov ds,ax

 mov ah,09
 mov dx, offset Stars1
 int 21h

 mov ah,09
 mov dx, offset Stars2
 int 21h

 mov ah,09
 mov dx,offset Stars3
 int 21h

 mov ah,09
 mov dx, offset Stars4
 int 21h

 mov ah,09
 mov dx,offset Stars5
 int 21h

 mov ah,4ch
 int 21h
 end Umar