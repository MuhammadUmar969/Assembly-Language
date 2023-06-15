.model small
.stack 100h
.data
.code
start:

mov dl, 4

rol dl, 1
add dl, 48

mov ah, 02
int 21h 

mov ah,4ch
int 21h
end start
