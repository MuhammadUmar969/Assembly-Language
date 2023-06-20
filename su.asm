.model small
.stack 100h
.data
  a db ?
.code

start:
 mov ah, 01 
 int 21h 

 sub al,30h

 mov a,al

 mov ah, 01 
 int 21h 

 sub al ,30h 

 sub a,al

 add a,48
 aas

 mov ah, 02
 mov dl,a
 int 21h 

 mov ah,4ch
 int 21h
end start