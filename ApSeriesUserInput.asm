.model small
.stack 100h

.data
    getrange db 'Enter range:','$'
    getfirst db 'Enter first number(single digit)','$'
    getdifference db 'Enter common difference','$'
    linefeed db 13, 10, "$"
    series db dup<0>
.code
MAIN proc far
    mov ax,@data
    mov ds,ax
    mov di,5000
    mov si,offset getrange
    call print
    call number
    mov [di],al
    inc di
    call line
    mov si,offset getfirst
    call print
    call number
    mov [di],al
    inc di
    call line
    mov si,offset getdifference
    call print
    call number
    mov [di],al
    mov di,5000
    mov cl,[di]
    xor ch,ch
    mov al,[di+1]
    mov dl,[di+2]
    mov si,offset series
    seri:
        mov [si],al
        add al,dl
        inc si
    loop seri
    mov ah,4ch
    int 21h
MAIN endp
line proc
    mov dx,offset linefeed ;set dx as the effective address of destination
    mov ah,09h ; set ah as 09
    int 21h ; call the interupt
    ret ; return 
line endp
print proc
    mov dx,si ;set dx as the effective address of destination
    mov ah,09h ; set ah as 09
    int 21h ; call the interupt
    ret ; return 

print endp
number proc
    mov AH, 01h
    int 21h
    sub al,30h  ; subtract 30h character code of character 0 from input to get numeric value
    ret
number endp

END MAIN
