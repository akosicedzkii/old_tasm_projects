.model small
.stack
.data
.code
start:
mov ah, 06
mov bh, 10H
mov cx, 0
mov dx, 184fH
int 10h
mov ah,02
mov bh,0
mov dh,0 ; y position
mov dl,34 ; x poistion
int 10h
mov ah,02
mov dl,'T'
int 21h
mov dl, 20H
int 21h
mov dl,'I'
int 21h
mov dl,20H
int 21h
mov dl,'P'
int 21h
mov ah, 4ch
int 21h
end start
