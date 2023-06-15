.model small
.stack 100h
.data
.code
 Umar:
 mov ah,02
 mov dl,'U'
 int 21h
 
 mov ah,02
 mov dl,'M'
 int 21h
 
 mov ah,02
 mov dl,'A'
 int 21h
 
 mov ah,02
 mov dl,'R'
 int 21h
 
 mov ah,4ch
 int 21h
 
 end Umar