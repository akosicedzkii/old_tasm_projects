.model small
.stack
.data
	msg1 db"[w] for forward$"
	msg2 db"[s] for backward$"
	msg3 db"[q] for forward/left$"
	msg4 db"[e] for forward$/righ$" 
	msg5 db"[a] for backward/left$"
	msg6 db"[d] for backward/right$"
.code

begin:

mov ax,@data
mov ds,ax

mov ah,09
mov dx,offset msg1
int 21h
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov ah,09
mov dx,offset msg2
int 21h
mov ah,02
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov ah,09
mov dx,offset msg3
int 21h
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov ah,09
mov dx,offset msg4
int 21h
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov ah,09
mov dx,offset msg5
int 21h
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov ah,09
mov dx,offset msg6
int 21h

input:
mov ah,01
int 21h

cmp al,'w'
je nxt

nxt:
mov dx,378h
mov al,11000011b
out dx,al
call input
mov ah,4ch
int 21h
end begin