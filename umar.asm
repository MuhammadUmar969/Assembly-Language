.model small
.stack 100h
.data

   heading db 09,09, "****** Job Entry For ******$"
   bheading db 10,09,09, "***** Web Developer *****$"
   names db 10, "Name:$"
   age db 10, "Age:$"
   gender db 10, "Gender:$"
   quali db 10, "Qualification:$"
   exper db 10, "Years of Experience:$"
   eligible db 10, "Congratulation You have more than 1 year experience in web developement so, you're selected$"
   noteligible db 10, "Sorry you are not eligible for this job$"
   luck db 10, "Better Luck Next Time$"
.code
Start:
   mov ax, @data
   mov ds,ax
   
   mov ah,09
   mov dx,offset heading
   int 21h
   
   mov ah,09
   mov dx,offset bheading
   int 21h
   
   mov ah, 09
   mov dx,offset names
   int 21h
   mov ah,3fh
   int 21h
   
   mov ah,09
   mov dx,offset age
   int 21h
   mov ah,3fh
   int 21h
   
   mov ah,09
   mov dx,offset gender
   int 21h
   mov ah,3fh
   int 21h
   
   mov ah,09
   mov dx,offset quali
   int 21h
   mov ah,3fh
   int 21h

   mov ah,09
   mov dx,offset exper
   int 21h
   mov ah,01
   int 21h
   mov dl, al
   sub al, '0'
   cmp al, 1
   jge eli
   cmp al, 0
   jge noteli
    
   eli:
   mov ah,09
   mov dx,offset eligible
   int 21h
   jmp exit
   
   noteli:
   mov ah,09
   mov dx,offset noteligible
   int 21h
   jmp exit

   exit:
   mov ah,4ch
   int 21h

end start