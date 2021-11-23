ASSUME CS:CODE DS:DATA
DATA SEGMENT
    NUM DB 27H
    RESULT DB ?
    DATA ENDS
CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV AL,NUM 
           MOV AH,00H
           MOV BL,10H
           DIV BL  
           MOV CX,AX
           MOV AH,00H 
           MOV DL,0AH
           MUL DL     
           ADD AL,CH 
           MOV RESULT,AL
     CODE ENDS
END START
HLT