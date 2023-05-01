.model small
.stack 100h
.data
.code

Start:

;small "a" to capital "A" you have to sub that value from 32
;mov ah,01
;int 21h

;sub al,32

;mov ah,02
;mov dl,al
;int 21h

;capital "A" to small "a" you have to add that value from 32
mov ah,01
int 21h

add al,32

mov ah,02
mov dl,al
int 21h

mov ah ,4ch
int 21h
end Start