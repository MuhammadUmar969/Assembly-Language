.model small
.stack 100h
.data
 input equ 01
 print equ 02
.code

start:
  
  mov ah, print
  mov dl, "H"
  int 21h

  mov ah, print
  mov dl , "E"
  int 21h

  mov ah, input
  int 21h

  mov ah, print
  mov dl, al
  int 21h

  mov ah,4ch
  int 21h
end start
