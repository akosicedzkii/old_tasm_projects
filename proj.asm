.model small
.stack
.data

	starts db"PC BASED RC CAR CONTROLLING SYSTEM$"
	choice1 db "[1] AUTOMATIC$"
	choice2 db "[2] MANUAL$"
	choice3 db "[3] EXIT$"
	choice db "ENTER YOUR CHOICE:$"
	manuals db "RC CAR MANUAL CONTROLS$"
	msg1 db"[w] FORWARD$"
	msg2 db"[q] FORWARD/LEFT$"
	msg3 db"[e] FORWARD/RIGHT$"
	msg4 db"[s] BACKWARD$"
	msg5 db"[a] BACKWARD/LEFT$"
	msg6 db"[d] BACKWARD/RIGHT$"
	msg8 db"[b] BACK$"
	automatic db "AUTOMATIC MODE$"
	msg7 db"Car is in automatic mode$"
	bg1 db"      **********************************************************************$"
	bg2 db"     ************************************************************************$"
	bg3 db"    ******$"
	bg4 db"   ******   ################      ################      ##################   $"
	bg5 db"  ******   ###################    ##################    ##################    $"
	bg6 db" ******   ######        ######    ######      ######    ######                 $"
	bg7 db"******    ######                  ######      #####     ###########             $" 
	bg8 db"******    ######                  ################      ###########           $"
	bg9 db" ******   ######        ######    ######                ######                 $"
	bg10 db" ******   ###################     ######                ##################    $"
	bg11 db"  ******    ###############       ######                ##################   $"
	bg12 db"   ******$"
	bg13 db"    ************************************************************************$"
	bg14 db"     **********************************************************************$"
	matik1 db"FORWARDING$"
	matik2 db"SENSOR 1 DETECTED AN OBSTACLE$"
	matik3 db"SENSOR 2 DETECTED AN OBSTACLE$"
	
	
.code
	begin:
	mov ax,@data
	mov ds,ax
	mov bh,9eh
	call intro
	call delay2
	mov bh,05eh
	call intro
	call delay2
	mov bh,04eh
	call intro
	call delay2
	mov bh,03eh
	call intro
	call delay2
	
	startpoint:
	call cls
	
	mov ah,02
	mov bh,00
	mov dl,23
	mov dh,07
	int 10h
	
	mov ah,09
	mov dx,offset starts
	int 21h
	
	mov ah,02
	mov bh,00
	mov dl,29
	mov dh,11
	int 10h
	mov ah,09
	mov dx,offset choice1
	int 21h
	
	mov ah,02
	mov bh,00
	mov dl,29
	mov dh,12
	int 10h
	mov ah,09
	mov dx,offset choice2
	int 21h
	
	mov ah,02
	mov bh,00
	mov dl,29
	mov dh,13
	int 10h
	mov ah,09
	mov dx,offset choice3
	int 21h
	
	mov ah,02
	mov bh,00
	mov dl,29
	mov dh,15
	int 10h
	mov ah,09
	mov dx,offset choice
	int 21h
	
	mov ah,01
	int 21h
	
	cmp al,'1'
	je matik01

	

	cmp al,'2'
	je manual
	
	cmp al,'3'
	je exit1
	jne startpoint
	exit1:
	call exit

	matik01:
	call matik

	manual:
call cls2
call box
call cls21
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,07
	int 10h
mov ah,09h
mov dx,offset manuals
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,11
	int 10h
mov ah,09h
mov dx,offset msg1
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,12
	int 10h
mov ah,09h
mov dx,offset msg2
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,13
	int 10h
mov ah,09h
mov dx,offset msg3
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,14
	int 10h
mov ah,09h
mov dx,offset msg4
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,15
	int 10h
mov ah,09h
mov dx,offset msg5
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,16
	int 10h
mov ah,09
mov dx,offset msg6
int 21h
mov ah,02
	mov bh,00
	mov dl,29
	mov dh,17
	int 10h
mov ah,09
mov dx,offset msg8
int 21h
input :
mov dx,378h
mov al,00000000h
out dx,al
mov ah,02
	mov bh,00
	mov dl,0
	mov dh,24
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
je backwardright
cmp al,'b'
je back

cmp al,'W'
je forward
cmp al,'Q'
je forwardleft
cmp al,'E'
je forwardright
cmp al,'A'
je backwardleft
cmp al,'S'
je backward
cmp al,'D'
je backwardright
cmp al,'B'
je back
jne input

back:
call startpoint
forward:
mov dx,378h
mov al,00000001b
out dx,al
call delay
call input
forwardleft:
mov dx,378h
mov al,00001001b
out dx,al
call delay
call input
forwardright:
mov dx,378h
mov al,00000101b
out dx,al
call delay
call input
backward:
mov dx,378h
mov al,00000010b
out dx,al
call delay
call input
backwardleft:
mov dx,378h
mov al,00001010b
out dx,al
call delay
call input
backwardright:
mov dx,378h
mov al,00000110b
out dx,al
call delay
call input


matik:
call cls
call box
call cls12
	mov ah,02
	mov bh,00
	mov dl,33
	mov dh,07
	int 10h
	
	mov ah,09
	mov dx,offset automatic
	int 21h
	
	mov ah,02
	mov bh,00
	mov dl,29
	mov dh,11
	int 10h
	mov ah,09
	mov dx,offset msg7
	int 21h

	read:
	mov ah,02
	mov bh,00
	mov dh,24
	mov dl,00
	int 10h
	mov dx,379h
	in al,dx

	test al, 00001000b
	je sensor1
	
	test al, 00010000b
	je sensor2
	
	jnz forwarding
	
	sensor1:
	call sensor11
	
	sensor2:
	call sensor22

	forwarding:
	mov ah,02
	mov bh,00
	mov dl,36
	mov dh,14
	int 10h
	mov ah,09
	mov dx,offset matik1
	int 21h
	mov dx,378h
	call delay
	call delay
	call delay
	mov al,00000001b
	out dx,al
	call delay
	call delay
	call delay
	call delay
	call delay
	call delay
	mov al,00000000b
	out dx,al
	call delay
	call delay
	call delay
	call delay
	call delay
	call delay
	
	jmp read1

	sensor11:
	mov ah,02
	mov bh,00
	mov dl,36
	mov dh,14
	int 10h
	mov ah,09
	mov dx,offset matik2
	int 21h
	mov dx,378h
	mov al,00000010b
	out dx,al
	call delay
	mov al,00000010b
	out dx,al
	call delay
	mov al,00000010b
	out dx,al
	call delay
	mov al,00001010b
	out dx,al
	call delay
	mov al,00001010b
	out dx,al
	call delay
	jmp read1

	read1:
	call read

	sensor22:
	mov ah,02
	mov bh,00
	mov dl,36
	mov dh,14
	int 10h
	mov ah,09
	mov dx,offset matik3
	int 21h
	mov dx,378h
	mov al,00000010b
	out dx,al
	call delay
	mov al,00000010b
	out dx,al
	call delay
	mov al,00000010b
	out dx,al
	call delay
	mov al,00000110b
	out dx,al
	call delay
	mov al,00000110b
	out dx,al
	call delay
	jmp read1


	cls proc
	mov ah,06
	mov bh,22h
	mov cx,0000
	mov dh,00
	mov dl,10
	int 10h
	
	mov bh,77h
	mov cl,10
	mov ch,0
	mov dh,00
	mov dl,20
	int 10h
	
	mov bh,22h
	mov cl,20
	mov ch,0
	mov dh,00
	mov dl,30
	int 10h
	
	mov bh,77h
	mov cl,30
	mov ch,0
	mov dh,00
	mov dl,40
	int 10h
	
	mov bh,22h
	mov cl,40
	mov ch,0
	mov dh,00
	mov dl,50
	int 10h
	
	mov bh,77h
	mov cl,50
	mov ch,0
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,22h
	mov cl,60
	mov ch,0
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,77h
	mov cl,70
	mov ch,0
	mov dh,00
	mov dl,80
	int 10h
	
	
	
	 
	mov bh,77h
	mov cl,00
	mov ch,04
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,22h
	mov cl,10
	mov ch,04
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,77h
	mov cl,20
	mov ch,04
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,22h
	mov cl,30
	mov ch,04
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,77h
	mov cl,40
	mov ch,04
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,22h
	mov cl,50
	mov ch,04
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,77h
	mov cl,60
	mov ch,04
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,22h
	mov cl,70
	mov ch,04
	mov dh,00
	mov dl,80
	int 10h

	
	
	
	 
	mov bh,22h
	mov cl,00
	mov ch,08
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,77h
	mov cl,10
	mov ch,08
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,22h
	mov cl,20
	mov ch,08
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,77h
	mov cl,30
	mov ch,08
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,22h
	mov cl,40
	mov ch,08
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,77h
	mov cl,50
	mov ch,08
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,22h
	mov cl,60
	mov ch,08
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,77h
	mov cl,70
	mov ch,08
	mov dh,00
	mov dl,80
	int 10h

	
	
	 
	mov bh,77h
	mov cl,00
	mov ch,12
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,22h
	mov cl,10
	mov ch,12
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,77h
	mov cl,20
	mov ch,12
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,22h
	mov cl,30
	mov ch,12
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,77h
	mov cl,40
	mov ch,12
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,22h
	mov cl,50
	mov ch,12
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,77h
	mov cl,60
	mov ch,12
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,22h
	mov cl,70
	mov ch,12
	mov dh,00
	mov dl,80
	int 10h

	mov bh,22h
	mov cl,00
	mov ch,16
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,77h
	mov cl,10
	mov ch,16
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,22h
	mov cl,20
	mov ch,16
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,77h
	mov cl,30
	mov ch,16
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,22h
	mov cl,40
	mov ch,16
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,77h
	mov cl,50
	mov ch,16
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,22h
	mov cl,60
	mov ch,16
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,77h
	mov cl,70
	mov ch,16
	mov dh,00
	mov dl,80
	int 10h
	cls endp

	
	
	box proc
	mov ah,06
	mov bh,90h
	mov cl,20
	mov ch,4
	mov dx,033bh
	int 10h
	
	mov bh,0eh
	mov cl,21
	mov ch,5
	mov dl,3ah
	mov dh,02
	int 10h
	
	mov bh,90h
	mov cl,20
	mov ch,9
	mov dx,033bh
	int 10h
	
	
	
	mov bh,0eh
	mov cl,21
	mov ch,10
	mov dl,3ah
	mov dh,02
	int 10h

	mov bh,90h
	mov cl,20
	mov ch,20
	mov dx,033bh
	int 10h
		
	box endp
	
	cls12 proc
	mov ah,06
	mov bh,77h
	mov cl,00
	mov ch,21
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,22h
	mov cl,10
	mov ch,21
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,77h
	mov cl,20
	mov ch,21
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,22h
	mov cl,30
	mov ch,21
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,77h
	mov cl,40
	mov ch,21
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,22h
	mov cl,50
	mov ch,21
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,77h
	mov cl,60
	mov ch,21
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,21h
	mov cl,70
	mov ch,21
	mov dh,00
	mov dl,80
	int 10h
	ret
	cls12 endp
	
	cls2 proc
	mov ah,06
	mov bh,49h
	mov cl,00
	mov ch,00
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,79h
	mov cl,10
	mov ch,0
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,49h
	mov cl,20
	mov ch,0
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,79h
	mov cl,30
	mov ch,0
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,49h
	mov cl,40
	mov ch,0
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,79h
	mov cl,50
	mov ch,0
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,49h
	mov cl,60
	mov ch,0
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,79h
	mov cl,70
	mov ch,0
	mov dh,00
	mov dl,80
	int 10h
	
	
	
	 
	mov bh,79h
	mov cl,00
	mov ch,04
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,49h
	mov cl,10
	mov ch,04
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,79h
	mov cl,20
	mov ch,04
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,49h
	mov cl,30
	mov ch,04
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,79h
	mov cl,40
	mov ch,04
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,49h
	mov cl,50
	mov ch,04
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,79h
	mov cl,60
	mov ch,04
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,49h
	mov cl,70
	mov ch,04
	mov dh,00
	mov dl,80
	int 10h

	
	
	
	 
	mov bh,49h
	mov cl,00
	mov ch,08
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,79h
	mov cl,10
	mov ch,08
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,49h
	mov cl,20
	mov ch,08
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,79h
	mov cl,30
	mov ch,08
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,49h
	mov cl,40
	mov ch,08
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,79h
	mov cl,50
	mov ch,08
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,49h
	mov cl,60
	mov ch,08
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,79h
	mov cl,70
	mov ch,08
	mov dh,00
	mov dl,80
	int 10h

	
	
	 
	mov bh,79h
	mov cl,00
	mov ch,12
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,49h
	mov cl,10
	mov ch,12
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,79h
	mov cl,20
	mov ch,12
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,49h
	mov cl,30
	mov ch,12
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,79h
	mov cl,40
	mov ch,12
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,49h
	mov cl,50
	mov ch,12
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,79h
	mov cl,60
	mov ch,12
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,49h
	mov cl,70
	mov ch,12
	mov dh,00
	mov dl,80
	int 10h

	

	
	
	 
	mov bh,49h
	mov cl,00
	mov ch,16
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,79h
	mov cl,10
	mov ch,16
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,49h
	mov cl,20
	mov ch,16
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,79h
	mov cl,30
	mov ch,16
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,49h
	mov cl,40
	mov ch,16
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,79h
	mov cl,50
	mov ch,16
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,49h
	mov cl,60
	mov ch,16
	mov dh,00
	mov dl,70
	int 10h
	
	 
	mov bh,79h
	mov cl,70
	mov ch,16
	mov dh,00
	mov dl,80
	int 10h
	cls2 endp
	cls21 proc
	mov ah,06
	mov bh,79h
	mov cl,00
	mov ch,21
	mov dh,00
	mov dl,10
	int 10h
	
	 
	mov bh,49h
	mov cl,10
	mov ch,21
	mov dh,00
	mov dl,20
	int 10h
	
	 
	mov bh,79h
	mov cl,20
	mov ch,21
	mov dh,00
	mov dl,30
	int 10h
	
	 
	mov bh,49h
	mov cl,30
	mov ch,21
	mov dh,00
	mov dl,40
	int 10h
	

	 
	mov bh,79h
	mov cl,40
	mov ch,21
	mov dh,00
	mov dl,50
	int 10h
	
	 
	mov bh,49h
	mov cl,50
	mov ch,21
	mov dh,00
	mov dl,60
	int 10h
	
	 
	mov bh,79h
	mov cl,60
	mov ch,21
	mov dh,00
	mov dl,70
	int 10h
	
	mov bh,49h
	mov cl,70
	mov ch,21
	mov dh,00
	mov dl,80
	int 10h
	ret
	cls21 endp

	intro proc
	mov ah,06
	mov dx,184fh
	mov cx,0
	int 10h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,05
	int 10h
	mov ah,09h
	mov dx,offset bg1
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,06
	int 10h
	mov ah,09h
	mov dx,offset bg2
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,07
	int 10h
	mov ah,09h
	mov dx,offset bg3
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,08
	int 10h
	mov ah,09h
	mov dx,offset bg4
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,09
	int 10h
	mov ah,09h
	mov dx,offset bg5
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,10
	int 10h
	mov ah,09h
	mov dx,offset bg6
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,11
	int 10h
	mov ah,09h
	mov dx,offset bg7
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,12
	int 10h
	mov ah,09h
	mov dx,offset bg8
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,13
	int 10h
	mov ah,09h
	mov dx,offset bg9
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,14
	int 10h
	mov ah,09h
	mov dx,offset bg10
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,15
	int 10h
	mov ah,09h
	mov dx,offset bg11
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,16
	int 10h
	mov ah,09h
	mov dx,offset bg12
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,17
	int 10h
	mov ah,09h
	mov dx,offset bg13
	int 21h
	mov ah,02
	mov bh,00
	mov dl,01
	mov dh,18
	int 10h
	mov ah,09h
	mov dx,offset bg14
	int 21h
	intro endp
	
	
	delay:
		push bx
		push cx
		mov bx, 4500
	B:
		mov cx, 8000
	C:
		NOP
		Loop C
		dec bx
		jnz B
		pop cx
		pop bx
		ret
		
		delay2:
		push bx
		push cx
		mov bx, 18000
	D:
		mov cx, 30000
	E:
		NOP
		Loop E
		dec bx
		jnz D
		pop cx
		pop bx
		ret
	exit:
	mov ah,4ch
	int 21h
	end begin
	
	
	
