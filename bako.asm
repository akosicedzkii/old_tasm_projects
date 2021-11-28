.model small
.stack
.data
.code

begin:

	mov ah,06h
	mov bh,60h
	mov cl,00
	mov ch,05
	mov dl,20
	mov dh,19
	int 10h
	
	mov ah,06h
	mov bh,00h
	mov cl,21
	mov ch,05
	mov dl,40
	mov dh,19
	int 10h
	
	mov ah,06h
	mov bh,40h
	mov cl,41
	mov ch,05
	mov dl,60
	mov dh,19
	int 10h
	
	mov ah,06h
	mov bh,0e0h
	mov cl,61
	mov ch,05
	mov dl,80
	mov dh,19
	int 10h
	
	mov ah,4ch
	int 21h
	end begin