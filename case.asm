.model small
.stack 100h
.data
 input equ 01
 print equ 02
 string equ 09
 var db "Enter your name: $"
.code

 Start:
  mov ax,@data
  mov ds,ax

  mov ah,string
  mov dx, offset var
  int 21h
  mov ah,3fh
  int 21h

  mov ah,input
  int 21h

  sub al,32

  mov ah, print
  mov dl,al
  int 21h

  

 mov ah,4ch
 int 21h
 end Start