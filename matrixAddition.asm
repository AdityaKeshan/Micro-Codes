DATA SEGMENT
M1 DB 0AH,0BH,0CH,0DH,0EH,0FH,0AH,0BH,0CH   ; 3x3 MATRIX 
M2 DB 0AH,0BH,0CH,0DH,0EH,0FH,0AH,0BH,0CH     ; 3X3 MATRIX
ANS DB 9 ?   ; ANSWER MATRIX
DATA ENDS
CODE SEGMENT
ASSUME DS:DATA,CS:CODE
START: MOV AX,DATA
       MOV DS,AX
       MOV CL,09H      ; COUNTER FOR NUMBER OF ELEMENTS
       LEA BP,M1       ;POINTER TO MATRIX 1
       LEA DI,M2       ;POINTER TO MATRIX 2
       LEA SI,ANS      ;POINTER TO MATRIX ANSWER
UP:    MOV BH,[BP]     ;METHOD TO ADD CORRESPONDING ELEMENTS
       ADD BH,[DI]
       MOV [SI],BH
       INC BP           ; INCREASING POINTER FOR EACH MATRIX
       INC DI
       INC SI
       LOOP UP           ; LOOPING
HLT
CODE ENDS
END START
