.model small
.stack
.data
	main db"Enter number from 0-9:$"
	msg1 db"////////$"
	msg2 db"/  --  /$"
	msg3 db"/ |  | /$"
	msg4 db"/  --  /$"
	msg5 db"/ |  | /$"
	msg6 db"/  --  /$"
	msg7 db"////////$"
	msg8 db"/      /$"
.code

begin:


	mov ax,@data
	mov ds,ax

	mov ah,02
	mov bh,00
	mov dh,09
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg1
	int 21h
	
	mov ah,02
	mov bh,00
	mov dh,10
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg2
	int 21h
	
	mov ah,02
	mov bh,00
	mov dh,11
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg3
	int 21h
	
	mov ah,02
	mov bh,00
	mov dh,12
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg4
	int 21h
	
	mov ah,02
	mov bh,0
	mov dh,13
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg5
	int 21h
	
	mov ah,02
	mov bh,0
	mov dh,14
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg6
	int 21h
	
	mov ah,02
	mov bh,0
	mov dh,15
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg7
	int 21h
	
	mainFrame:
	mov ah,06
	mov bh,07h
	mov cx,0000h
	mov dx,184fh
	int 10h
	mov ah,02
	mov bh,0
	mov dh,17
	mov dl,30
	int 10h
	
	mov ah,09
	mov dx,offset main
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'0'
	je one
	
	one:
	mov ah,09
	mov dx,offset msg1
	int 21h
	
	mov ah,02
	mov bh,00
	mov dh,10
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg2
	int 21h
	
	mov ah,02
	mov bh,00
	mov dh,11
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg3
	int 21h
	
	mov ah,02
	mov bh,00
	mov dh,12
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg8
	int 21h
	
	mov ah,02
	mov bh,0
	mov dh,13
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg5
	int 21h
	
	mov ah,02
	mov bh,0
	mov dh,14
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg6
	int 21h
	
	mov ah,02
	mov bh,0
	mov dh,15
	mov dl,35
	int 10h
	
	mov ah,09
	mov dx,offset msg7
	int 21h
	
	jmp mainFrame
	
	mov ah,4ch
	int 21h
	end begin