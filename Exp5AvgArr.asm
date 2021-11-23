DATA SEGMENT
    ARR DB 1DH,43H,5AH,22H,88H,25H,61H      
    N DW 07H
    SUM DW ?
    AVG DW ?
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    
    START:
    MOV AX,DATA
    MOV DS,AX
    
    MOV CX,N
    MOV AX,0000H
    LEA SI,ARR
    
ABC:MOV BL,[SI]
       ADD AX,BX
       INC SI
       LOOP ABC
       
       MOV SUM,AX  
       MOV BX,N
       DIV BX
       MOV AVG,AX
       
       MOV AH,4CH
       INT 21H
CODE ENDS
END START