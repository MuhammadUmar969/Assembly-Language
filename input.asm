.model small
.stack 100h
.data
.code

Stars:
 
; mov ah,01
; int 21h

; mov bl,al

; mov ah,02
; mov dl,bl
; int 21h

; mov ah,01
; int 21h

; mov bl,al

; mov ah,02
; mov dl,bl
; int 21h

; mov ah,01
; int 21h

; mov bl,al

; mov ah,02
; mov dl,bl
; int 21h

; mov ah,01
; int 21h

; mov bl,al

; mov ah,02
; mov dl,bl
; int 21h

; For multiple input
 mov ah,3fh
 int 21h

 mov ah,4ch
 int 21h

end Stars