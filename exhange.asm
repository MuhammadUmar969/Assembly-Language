.model small
.stack 100h
.data
.code

Start:

mov al, 49
mov bl, 50

xchg al,bl
mov ah,02
mov dl,al
int 21h


mov ah,4ch
int 21h
end Start