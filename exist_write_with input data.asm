.model small
.stack 100h
.data
fname db 'yys.txt',0
address dw ?
msg db 'Enter the Data $'
buffer db 100 dup('$') ;100 byte
.code
start:
mov ax,@data
mov ds,ax
;create a file which is create in c:\tasm1.4 /tasm

mov ah,3dh
lea dx,fname
mov al,2   ;mode 2 for read and write  note: becareful for register al or cl it cause error 
int 21h


mov address,ax

mov ah,09
lea dx,msg
int 21h 

mov si,0   ;index number
mov cx,0    ; number of charcter entered by user will count this register

again:
mov ah,01       ; line no 29 to 36 will take input store in buffer do increment in si index number and cx in counter of entered text.
int 21h 
cmp al,13
je exit
mov buffer[si],al 
inc si
inc cx
jmp again 

exit:
;write on created file 
mov ah ,40h
mov bx,address 
lea dx,buffer
int 21h    


mov ah,3eh
mov bx,address
int 21h 


mov ah,4ch
int 21h 

end start
