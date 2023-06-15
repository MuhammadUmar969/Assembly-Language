.model small
.stack 100h
.data
    input equ 01
	print equ 02
.code

start:

  mov ah,input
  int 21h
  mov ch,al
  mov ah,print
  mov dl,ch
  int 21h
  
  mov ah,4ch
  int 21h
  
 end start
   