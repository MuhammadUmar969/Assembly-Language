.model small
.stack 100h
.data
  input equ 01
  print equ 02
.code

Start:

 mov ah,input
 int 21h

 mov ah, print
 mov dl, al
 int 21h

 mov ah,4ch
 int 21h
end Start