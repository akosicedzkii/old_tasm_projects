.model small
.stack
.data

	question db "Enter Password:$"
	nam db "Cederic Ferrer Martinez$"
.code

begin:


mov ax,@data
mov ds,ax

invalid:
mov ah,06h
mov bh,07h
mov cx,0000h
mov dx,184fh
int 10h

mov ah,02
mov bh,00
mov dl,30
mov dh,12
int 10h

mov ah,09h
mov dx,offset question
int 21h

mov ah,01h
int 21h

cmp al,'c'
je nxt
jne invalid

nxt:
mov ah,01h
int 21h

cmp al,'e'
je nxt1
jne invalid

nxt1:
mov ah,01h
int 21h

cmp al,'d'
je nxt2
jne invalid

nxt2:
mov ah,02
mov bh,00
mov dl,30
mov dh,13
int 10h

mov ah,09h
mov dx,offset nam
int 21h

mov ah,4ch
int 21h
end begin

