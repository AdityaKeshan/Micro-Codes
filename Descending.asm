DATA SEGMENT
A DB 01H,02H,03H,04H,05H,06H,07H,08H,09H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
MOV DS,AX
MOV CH,08H
UP2: MOV CL,08H
LEA SI,A

UP1:MOV AL,[SI]
MOV BL,[SI+1]
CMP AL,BL
JNC DOWN
MOV DL,[SI+1]
XCHG [SI],DL
MOV [SI+1],DL

DOWN: INC SI
DEC CL
JNZ UP1
DEC CH
JNZ UP2

MOV CX, 09H
LEA SI, A
    
L1:
MOV DL, [SI] 
ADD DL,30H
MOV AH, 02H   
INT 21H
INC SI
MOV AH, 02H                    
MOV DL, 0H          
INT 21H
LOOP L1
CODE ENDS
END START