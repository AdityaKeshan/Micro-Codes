DATA SEGMENT
    STRING DB 10,13,"Good Day$"
  VOWEL DB ?  
  ANS DB ?
DATA ENDS 
CODE SEGMENT 
ASSUME CS:CODE DS:DATA
 START:MOV AX, DATA
  MOV DS, AX
  LEA SI, STRING  
  MOV BL, 00     
  BACK: MOV AL, [SI]
        CMP AL,'$'
        JZ STORE
        CMP AL,'A'
        JZ COUNT   
        CMP AL,'E'
        JZ COUNT   
        CMP AL,'I'
        JZ COUNT   
        CMP AL,'O'
        JZ COUNT   
        CMP AL,'U'
        JZ COUNT
        CMP AL,'a'
        JZ COUNT   
        CMP AL,'e'
        JZ COUNT   
        CMP AL,'i'
        JZ COUNT   
        CMP AL,'o'
        JZ COUNT   
        CMP AL,'u'
        JZ COUNT   
        INC SI
        JMP BACK

  COUNT: INC BL
        INC SI
        JMP BACK
  STORE: LEA SI,ANS
         MOV [SI],BL
CODE ENDS
END START
HLT