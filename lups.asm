.model small
.stack
.data
.code

begin:


mov ah,06
mov cx,0
mov bh,00h
mov dx,184fh
int 10h
mov ah,06
mov cx,0
mov bh,77h
mov dx,183bh
int 10h
mov ah,06
mov cx,0
mov bh,00h
mov dx,1827h
int 10h
mov ah,06
mov cx,0
mov bh,77h
mov dx,1813h
int 10h

mov ah,06
mov cx,0
mov bh,77h
mov dx,104fh
int 10h
mov ah,06
mov cx,0
mov bh,00h
mov dx,103bh
int 10h 
mov ah,06
mov cx,0
mov bh,77h
mov dx,1027h
int 10h
mov ah,06
mov cx,0
mov bh,00h
mov dx,1013h
int 10h


mov ah,06
mov cx,0
mov bh,00h
mov dx,084fh
int 10h
mov ah,06
mov cx,0
mov bh,77h
mov dx,083bh
int 10h
mov ah,06
mov cx,0
mov bh,00h
mov dx,0827h
int 10h
mov ah,06
mov cx,0
mov bh,77h
mov dx,0813h
int 10h
mov ah,4ch
int 21h 
end begin

