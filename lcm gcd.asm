DATA SEGMENT    
NUM1 DW 0228h
NUM2 DW 000Fh
GCD DW 01 DUP (?)  
LCM DW 01 DUP (?)
DATA ENDS
CODE SEGMENT
    ASSUME: CS:CODE DS:DATA
START:
MOV AX, DATA
MOV DS, AX
MOV AX, NUM1
MOV BX, NUM2
BACK: CMP AX, BX
JE RESULT
JNC AHEAD
SUB BX, AX
JMP BACK
AHEAD: SUB AX, BX
JMP BACK
RESULT: MOV GCD, AX 

MOV AX, NUM1
MOV BX, NUM2
MOV CX, AX
MOV DX, BX
BACK2: CMP AX, BX
JE RESULT2
JNC AHEAD2
ADD AX, CX
JMP BACK2
AHEAD2: ADD BX, DX
JMP BACK2
RESULT2: MOV LCM, AX

INT 21h
CODE ENDS
END START