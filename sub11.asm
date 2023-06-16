.model small
.stack 100h
.data 
a db ?
b db ?
.code
start:
mov al,49
mov bl,50

sub al,30h
sub bl,30h


sub bl,al

add bl,48
aas

Mov ah, 02
mov dl,bl
int 21h 

mov ah, 4ch 
int 21h
end start
