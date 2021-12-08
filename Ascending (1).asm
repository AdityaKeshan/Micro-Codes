DATA SEGMENT
    ARR DB 08H,09H,03H,04H, 06h, 07h, 01H, 05H,0AH,02H 
    SM DB ?
    GR DB ?
    DATA ENDS
CODE SEGMENT 
    ASSUME CS:CODE,DS:DATA
    START:MOV AX,DATA
          MOV DS,AX
          MOV CH,09H
       L2:MOV CL,09H
          LEA SI,ARR
       L1:MOV AL,[SI]
          MOV BL,[SI+1]
          CMP AL,BL
          JC DOWN
          MOV DL,[SI+1]
          XCHG [SI],DL
          MOV [SI+1],DL
     DOWN:INC SI
          DEC CL
          JNZ L1
          DEC CH
          JNZ L2
     LEA SI,ARR
    
     MOV AL,[SI]
     MOV SM,AL
     MOV AL, [SI+9]
     MOV GR, AL
     CODE ENDS
END START