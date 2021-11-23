ASSUME CS:CODE DS:DATA
DATA SEGMENT
    NUM DW 01A9H
    RESULT DW ?
    DATA ENDS
CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV AX,NUM
           MOV BL,64H
           DIV BL
           MOV [SI],AL
           MOV AL,AH 
           MOV AH,00H
           MOV BL,0AH
           DIV BL
           MOV [SI+1],AH
           MOV AH,00H
           MOV BX,0010H
           MUL BX
           ADD AL,[SI+1]
           MOV AH,[SI]   
           MOV RESULT,AX
     CODE ENDS
END START
HLT