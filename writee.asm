.model small
.stack 100h
.data
fname db 'yys.txt',0
address dw ?
msg db 'sahar $'   ;count how many character in text sahar and write that number in cx line no 25

.code
start:
mov ax,@data
mov ds,ax
;3dh open existing file 

mov ah,3dh
lea dx,fname
mov al,2   ;mode 2 for read and write  note: be careful for register al or cl it cause error 
int 21h


mov address,ax

;write on created file 
mov ah ,40h   ; 40h will write on file ,which file ans address is a variable which has address of the file on which 40h will write
mov bx,address 
mov cx,5
lea dx,msg
int 21h    


mov ah,3eh   ; 3eh is use to close a file 
mov bx,address
int 21h 


mov ah,4ch
int 21h 

end start
