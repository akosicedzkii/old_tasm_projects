.model small
.stack
.data
.code

begin:

mov ah,06
mov bh,00h
mov dx,184fh
mov cx,0
int 10h

mov ah,06
mov bh,11h
mov dx,133dh
mov cx,0
int 10h


mov ah,06
mov bh,22h
mov dx,0e2bh
mov cx,0
int 10h

mov ah,4ch
int 21h
end begin
