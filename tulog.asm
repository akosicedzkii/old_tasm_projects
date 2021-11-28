.model small
.stack
.code

start:
	


delay2 proc
		push bx
		push cx
		mov bx, 18000
	BB2:
		mov cx, 30000
	C2:
		NOP
		Loop C2
		dec bx
		jnz BB2
		pop cx
		pop bx
		ret
delay2 endp 



	button3:
	mov ah,4ch
	int 21h

end start



