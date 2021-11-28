.model small
.stack
.data
	msg1 db "What is your name:$"
	msg2 db "                  $"
	msg3 db"Welcome: $"
	
.code
	begin:
	
	mov ax,@data
	mov ds,ax
	mov ah,02
	mov bh,00
	mov dl,30
	mov dh,12
	int 10h
	
	mov ah,09
	mov dx,offset msg1
	int 21h
	
	mov ah,3fh
	mov dx,offset msg2
	int 21h
	
	mov ah,02
	mov bh,00
	mov dl,30
	mov dh,13
	int 10h
	
	mov ah,09
	mov dx,offset msg3
	int 21h

	mov ah,09
	mov dx,offset msg2
	int 21h
	
	mov ah,4ch
	int 21h
	end begin