.model small
.stack
.data

	msg1 db "Enter a Number(0-9):$"
	msg2 db "Martinez,Cederic F.$"
	msg3 db "Invalid input$"
	
.code

	begin:
	
	mov ax,@data
	mov ds,ax
	
	main proc
	call start
	call exit
	main endp
	
	increment proc
	mov ah,02
	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h
	mov ah,02
	mov bh,'1'
	loops: mov dl,bh
	int 21h
	mov bh,dl
	inc bh
	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h
	loop loops
	call start
	ret
	increment endp
	
	start proc
	mov ah,09
	mov dx,offset msg1
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'1'
	je nxt1
	jne next1
	nxt1:
	mov cx,0001
	call increment
	next1:
	cmp al,'2'
	je nxt2
	jne next2
	nxt2:
	mov cx,0002
	call increment
	next2:
	cmp al,'3'
	je nxt3
	jne next3
	nxt3:
	mov cx,0003
	call increment
	next3:
	cmp al,'4'
	je nxt4
	jne next4
	nxt4:
	mov cx,0004
	call increment
	next4:
	cmp al,'5'
	je nxt5
	jne next5
	nxt5:
	mov cx,0005
	call increment
	next5:
	cmp al,'6'
	je nxt6
	jne next6
	nxt6:
	mov cx,0006
	call increment
	next6:
	cmp al,'7'
	je nxt7
	jne next7
	nxt7:
	mov cx,0007
	call increment
	next7:
	cmp al,'8'
	je nxt8
	jne next8
	nxt8:
	mov cx,0008
	call increment
	next8:
	cmp al,'9'
	je nxt9
	jne next9
	nxt9:
	mov cx,0009
	call increment
	next9:
	cmp al,'0'
	je nxt0
	jne next0
	nxt0:
	mov ah,02
	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h
	mov ah,09
	mov dx,offset msg2
	int 21h
	next0:
	mov ah,09
	mov dx,offset msg3
	mov ah,02
	mov dl,0ah
	int 21h
	mov dl,0dh 
	int 21h
	call main
	ret
	start endp
	
	exit proc
	mov ah,4ch
	int 21h
	ret
	exit endp
	
	end begin
	