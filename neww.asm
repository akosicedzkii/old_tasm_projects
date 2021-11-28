.model small
.stack
.data
	msg1 db"Enter Password:$"
	msg2 db"Welcome Cedzkii$"
	
.code

	begin:
	
	mov ax,@data
	mov ds,ax
	back:
	mov ah,06
	mov bh,07
	mov cx,0
	mov dx,184fh
	int 10h
	
	mov ah,02
	mov bh,0
	mov dl,30
	mov dh,12
	int 10h
	
	mov ah,09
	mov dx,offset msg1
	int 21h
	
	mov ah,07
	int 21h
	
	cmp al,'c'
	je new
	jne back
	
	new:
	ulit:
	mov ah,02
	mov bh,0
	mov dl,45
	mov dh,12
	int 10h
	mov dl,"*"
	int 21h
	
	mov ah,07
	int 21h
	cmp al,'f'
	je new1
	jne back
	
	new1:
	mov ah,02
	mov bh,0
	mov dl,46
	mov dh,12
	int 10h
	mov dl,"*"
	int 21h
	
	mov ah,07
	int 21h
	cmp al,'m'
	je new2
	jne back
	new2:
	mov ah,02
	mov bh,0
	mov dl,47
	mov dh,12
	int 10h
	mov dl,"*"
	int 21h
	
	mov ah,07
	int 21h
	
	
	mov ah,06h
	mov bh,07h
	mov cx,0
	mov dx,184fh
	int 10h
	
	mov ah,02
	mov bh,0
	mov dl,30
	mov dh,12
	int 10h
	
	mov ah,09
	mov dx,offset msg2
	int 21h
	
	mov ah,4ch
	int 21h
	end begin