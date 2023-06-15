.model small
.stack 100h
.data
  names db 10, "Umar$"
.code
Umar:
   mov ax, @data
   mox ds, ax
   mov cx, 10
   
   l1:
   mov ah, 09
   mov dx, offset names
   int 21h
   Loop l1
   
   mov ah,4ch
   int 21h
end Umar