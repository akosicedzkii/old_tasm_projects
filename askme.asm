.model small
.stack
.data
.code

begin:

mov ah,06h
mov cx,0
mov bh,44h
mov dh,09
mov dl,09
int 10h
mov ah,4ch
int 21h
end begin

