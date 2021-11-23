ASSUME CS:CODE DS:DATA
DATA SEGMENT
    EVEN DB 'EVEN','$'
    ODD DB 'ODD','$'
    DATA ENDS
CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV AH,01H
           INT 21H
           MOV AH,00H
           MOV BL,02H
           DIV BL
           CMP AH,00H
           JE EVNUM
           JMP EXIT
     EVNUM: LEA DX,EVEN
     EXIT : MOV AH,09H
            INT 21H
            MOV AH,4CH
            INT 21H
     CODE ENDS
END START