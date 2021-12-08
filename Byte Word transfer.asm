DATA SEGMENT 
    D1 DB 019H,0BCH,0E0H,022H
    D2 DW 019BCH, 0E022H
DATA ENDS 
CODE SEGMENT 
    ASSUME CS: CODE DS: DATA
    
    START:
    MOV AX,0H
    MOV AX,DATA
    MOV DS,AX
    LEA SI,D1
    MOV DI,1000H
    MOV CX, 04H
    L1:
    MOV AL, [SI]
    MOV [DI], AL
    INC SI
    INC DI
    LOOP L1:
    LEA SI, D2
    MOV CX,02H
    L2:
    MOV AX,[SI]
    MOV [DI],AX
    INC SI
    INC SI
    INC DI 
    INC DI
    LOOP L2
CODE ENDS
END START 


