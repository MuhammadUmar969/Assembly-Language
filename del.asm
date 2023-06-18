.MODEL SMALL
.DATA
FILE DB 'C:\y.txt',0     ; File Path (Note: Folders are not created, so always create a file inside existing folderor drive). 0 is used to append the file
MSG DB 'File Deleted','$'  ; To display successful message when File is deleted
.CODE
START: 
MOV AX,@DATA
MOV DS,AX

;File Deletion Part
LEA DX,FILE                ; Load the file path to DX
MOV AH,41H                 ; Delete the File, AH=41H
INT 21H

;Display Part              
JC EXIT                    ; If carry Flag is Set, It means File is not Deleted
LEA DX,MSG                 ; Load the Success Message
MOV AH,09H
INT 21H

;Termination Part
EXIT:MOV AH,4CH            ; Terminate the Program
INT 21H
END START
