.model small
.stack
.data
	main db "RC Car Controls$"
	msg1 db "[w] Forward$"
	msg2 db "[q] Forward/Left$"
	msg3 db "[e] Forward/Right$"
	msg4 db "[a] Backward/Left$"
	msg5 db "[s] Backward$"
	msg6 db "[d] Backward/Right$"
.code

begin:
mov ax,@data
mov ds,ax

manual:
call cls
mov ah,02
mov bh,00
mov dl,25
mov dh,02
int 10h
mov ah,09h
mov dx,offset main
int 21h
mov ah,02
mov bh,00
mov dl,25
mov dh,05
int 10h
mov ah,09h
mov dx,offset msg1
int 21h
mov ah,02
mov bh,00
mov dl,25
mov dh,06
int 10h
mov ah,09h
mov dx,offset msg2
int 21h
mov ah,02
mov bh,00
mov dl,25
mov dh,07
int 10h
mov ah,09h
mov dx,offset msg3
int 21h
mov ah,02
mov bh,00
mov dl,25
mov dh,08
int 10h
mov ah,09h
mov dx,offset msg4
int 21h
mov ah,02
mov bh,00
mov dl,25
mov dh,09
int 10h
mov ah,09h
mov dx,offset msg5
int 21h
mov ah,02
mov bh,00
mov dl,25
mov dh,10
int 10h
mov ah,09
mov dx,offset msg6
int 21h
mov dx,378h
mov al,00000000h
out dx,al
mov ah,02
mov bh,00
mov dl,25
mov dh,10
int 10h
mov ah,07
int 21h

cmp al,'w'
je forward
cmp al,'q'
je forwardleft
cmp al,'e'
je forwardright
cmp al,'a'
je backwardleft
cmp al,'s'
je backward
cmp al,'d'
je backwardleft
jne manual1
manual1:
call manual


forward:
mov dx,378h
mov al,00000001b
out dx,al
call delay
call manual

forwardleft:
mov dx,378h
mov al,00001010b
out dx,al
call delay
call manual

forwardright:
mov dx,378h
mov al,00001001b
out dx,al
call delay
call manual

backward:
mov dx,378h
mov al,00000100b
out dx,al
call delay
call manual

backwardleft:
mov dx,378h
mov al,00000110b
out dx,al
call delay
call manual

backwardright:
mov dx,378h
mov al,00000101b
out dx,al
call delay
call manual

cls :
mov ah,06
mov bh,07
mov cx,00
mov dx,184fh
int 10h
ret

delay:
		push bx
		push cx
		mov bx, 1000
	B:
		mov cx, 1500
	C:
		NOP
		Loop C
		dec bx
		jnz B
		pop cx
		pop bx
		ret
exit:		
mov ah,4ch
int 21h
end begin


