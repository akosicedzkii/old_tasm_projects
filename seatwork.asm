.model small
.stack
.data
		
		msg1 db "MAIN MENU$"
		msg2 db "[L]LOGIN$"
		msg3 db "[X]EXIT$"
		msg4 db "USERNAME:$"
		msg5 db "PASSWORD:$"
		msg6 db "Enter your Choice:$"
		msg7 db "RESISTOR COLOR CODE$"
		msg8 db "[1] 1K$"
		msg9 db "[2] 2K$"
		msg10 db "[3] 3K$"
		msg11 db "[4] 4K$"
		msg12 db "[0] MAIN MENU$"
		msg13 db "USER AUTHENTIFICATION$"
		msg14 db "1k RESISTOR$"
		msg15 db "Press [x] to back:$"
		msg16 db "2k RESISTOR$"
		msg17 db "3k RESISTOR$"
		msg18 db "4k RESISTOR$"
		
		
		
.code

	start:
	mov ax,@data
	mov ds,ax
	main proc
	call mainMenu
	call clear
	call LogIn
	call clear
	call resMenu
	call exit
		main endp
		
	mainMenu proc
		back:
		call clear
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,10
		int 10h
		
		mov ah,09
		mov dx,offset msg1
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,13
		int 10h
		
		mov ah,09
		mov dx,offset msg2
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,14
		int 10h
		
		mov ah,09
		mov dx,offset msg3
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,16
		int 10h
		
		mov ah,09
		mov dx,offset msg6
		int 21h
		
		mov ah,01
		int 21h
		
		cmp al,'x'
		jne nexto
		call exit
		
		nexto:
		cmp al,'l'
		jne back
		je nexton1
		
		nexton1:
		ret
		mainMenu endp
	logIn proc
		
		back1:
		call clear
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,10
		int 10h
		
		mov ah,09
		mov dx,offset msg13
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,12
		int 10h
		
		mov ah,09
		mov dx,offset msg4
		int 21h
		
		mov ah,01
		int 21h
		
		cmp al,'c'
		je nexxt
		jne back1
		
		nexxt:
		
		mov ah,01
		int 21h
		
		cmp al,'f'
		je nexxt1
		jne back1
		
		nexxt1:
		mov ah,01
		int 21h
		
		cmp al,'m'
		je nexxt2
		jne back1
		
		nexxt2:
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,13
		int 10h
		
		mov ah,09
		mov dx,offset msg5
		int 21h
		
		mov ah,07
		int 21h
		
		cmp al,'m'
		je next
		jne LogIn
		
		next:
		mov ah,02
		mov bh,00
		mov dl,39
		mov dh,13
		int 10h
		mov dl,'*'
		int 21h
		
		mov ah,07
		int 21h
		
		cmp al,'f'
		je next1
		jne LogIn
		
		next1:
		mov ah,02
		mov bh,00
		mov dl,40
		mov dh,13
		int 10h
		mov dl,'*'
		int 21h
		mov ah,07
		int 21h
		
		cmp al,'c'
		je nexton
		jne back2
		back2:
		call LogIn
		nexton:
		mov ah,02
		mov bh,00
		mov dl,41
		mov dh,13
		int 10h
		mov dl,'*'
		int 21h
		ret
		logIn endp
	
		
	resMenu proc
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,6
		int 10h
		
		mov ah,09
		mov dx,offset msg7
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,8
		int 10h
		
		mov ah,09
		mov dx,offset msg8
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,42
		mov dh,8
		int 10h
		
		mov ah,09
		mov dx,offset msg10
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,10
		int 10h
		
		mov ah,09
		mov dx,offset msg9
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,42
		mov dh,10
		int 10h
		
		mov ah,09
		mov dx,offset msg11
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,12
		int 10h
		
		mov ah,09
		mov dx,offset msg12
		int 21h
		
		mov ah,02
		mov bh,00
		mov dl,30
		mov dh,14
		int 10h
		
		mov ah,09
		mov dx,offset msg6
		int 21h
		
		mov ah,01
		int 21h
		
		cmp al,'1'
		jne nxt
		call res1
		nxt:
		cmp al,'2'
		jne nxt1
		call res2
		nxt1:
		cmp al,'3'
		jne nxt2
		call res3
		nxt2:
		cmp al,'4'
		jne nxt3
		call res4
		nxt3:
		cmp al,'0'
		jne backk
		call clear
		call main
		backk:
		call clear
		call resMenu
		ret
	resMenu endp
	
	res1 proc
	backRes1:
	call clear
	mov ah,02
	mov bh,0
	mov dl,30
	mov dh,3
	int 10h
	mov ah,09
	mov dx,offset msg14
	int 21h
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
	
	mov ah,06h
	mov bh,07h
	mov cl,0
	mov ch,20
	mov dx,184fh
	int 10h
	
	mov ah,02
	mov bh,00h
	mov dl,10
	mov dh,23
	int 10h
	
	mov ah,09
	mov dx,offset msg15
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'x'
	jne backRes1
	call clear
	call resMenu
	ret
	res1 endp 
	
	res2 proc
	backRes2:
	call clear
	mov ah,02
	mov bh,0
	mov dl,30
	mov dh,3
	int 10h
	mov ah,09
	mov dx,offset msg16
	int 21h
	
	mov ah,06h
	mov bh,40h
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
	
	mov ah,06h
	mov bh,07h
	mov cl,0
	mov ch,20
	mov dx,184fh
	int 10h
	
	mov ah,02
	mov bh,00h
	mov dl,10
	mov dh,23
	int 10h
	
	mov ah,09
	mov dx,offset msg15
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'x'
	jne backRes2
	call clear
	call resMenu
	ret
	res2 endp 
	
	res3 proc
	backRes3:
	call clear
	mov ah,02
	mov bh,0
	mov dl,30
	mov dh,3
	int 10h
	mov ah,09
	mov dx,offset msg17
	int 21h
	
	mov ah,06h
	mov bh,0c0h
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
	
	mov ah,06h
	mov bh,07h
	mov cl,0
	mov ch,20
	mov dx,184fh
	int 10h
	
	mov ah,02
	mov bh,00h
	mov dl,10
	mov dh,23
	int 10h
	
	mov ah,09
	mov dx,offset msg15
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'x'
	jne backRes3
	call clear
	call resMenu
	ret
	res3 endp 
	
	res4 proc
	backRes4:
	call clear
	mov ah,02
	mov bh,0
	mov dl,30
	mov dh,3
	int 10h
	mov ah,09
	mov dx,offset msg18
	int 21h
	
	mov ah,06h
	mov bh,0e0h
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
	
	mov ah,06h
	mov bh,07h
	mov cl,0
	mov ch,20
	mov dx,184fh
	int 10h
	
	mov ah,02
	mov bh,00h
	mov dl,10
	mov dh,23
	int 10h
	
	mov ah,09
	mov dx,offset msg15
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'x'
	jne backRes4
	call clear
	call resMenu
	ret
	res4 endp 
	
	clear proc
		mov ah,06
		mov bh,07h
		mov cx,0000
		mov dx,184fh
		int 10h
		ret
		clear endp
	
	exit proc 
		mov ah,4ch
		int 21h
		ret
		exit endp
		
		end start
	