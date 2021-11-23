ASSUME CS:CODE DS:DATA
DATA SEGMENT
    ARR DB 054H,0D7H,019H,086H
    DATA ENDS
CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV CH,03H
       L2: MOV CL,03H
           LEA SI,ARR
       L1: MOV AL,[SI]
           MOV BL,[SI+1]
           CMP AL,BL
           JNC DOWN
           MOV DL,[SI+1]
           XCHG [SI],DL
           MOV [SI+1],DL
     DOWN: INC SI
           DEC CL
           JNZ L1
           DEC CH
           JNZ L2
     CODE ENDS
END START