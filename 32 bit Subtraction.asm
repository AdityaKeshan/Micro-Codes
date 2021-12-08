org 100h
MOV AX,0228H
MOV BX,019BCH 
NEG AX
NEG BX
DEC BX
MOV CX,067ABH
MOV DX,0FF12H
ADD AX,CX
ADC BX,DX
JC j1
NOT AX
NOT BX
INC AX
JC j2
HLT
j2:
INC BX 
HLT
j1:
CLC
HLT




                                                                                     s