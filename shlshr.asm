model small
.stack 100h
.data
.code
start:

mov dl,4
shl dl,1

add dl, 48
mov ah, 02
int 21h

mov bl, dl

MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h

mov dl, bl
sub dl, 48
shr dl, 1
add dl, 48
mov ah, 02
int 21h

mov ah, 4ch 
int 21h

end start
