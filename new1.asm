.MODEL SMALL
.STACK
.DATA
CONSTANT EQU 20
PROMPT DB 'Enter name: $'
GREET DB 'Hello $'
MYVAR   LABEL    BYTE
VARLEN  DB       20
ACTLEN  DB       ?
VARPTR  DB       20 DUP(' '),'$'
.CODE

start:
MOV AX,@DATA    
MOV DS,AX

MOV AH,02H       
MOV BH,00H
MOV DX,0A14H
INT 10H

MOV AH,09H      
MOV DX,OFFSET PROMPT
INT 21H

MOV AH,0AH      
MOV DX,OFFSET MYVAR
INT 21H

MOV BH,00H       
MOV BL,ACTLEN
MOV VARPTR[BX],'$'

MOV AH,02H       
MOV BH,00H
MOV DX,0B14H
INT 10H

MOV AH,09H       
MOV DX,OFFSET GREET
INT 21H
MOV DX,OFFSET VARPTR
INT 21H

MOV AH,4CH       
INT 21H
END start