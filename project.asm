.model small
.stack
.data

	bg db"+---------------------------------------------+$"
   bg2 db"|                                             |$"
   msg1 db"Enter your Choice: $"
   msg2 db"[m] manual$"
   msg3 db"[a] automatic$"
   msg4 db" RC Car automation with manual operation$"
   
   
   
.code
begin:
mov ax,@data
mov ds,ax
main proc
call menu
call ext
main endp

background proc
	mov ah,06
	mov bh,05eh
	mov cl,17
	mov ch,5
	mov dx,083fh
	int 10h
	mov ah,02
mov bh,00
mov dl,17
mov dh,6
int 10h
mov ah,09
mov dx,offset bg
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,7
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,7
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,8
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,9
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,10
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,11
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,12
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,13
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,14
int 10h
mov ah,09
mov dx,offset bg2
int 21h
mov ah,02
mov bh,00
mov dl,17
mov dh,15
int 10h
mov ah,09
mov dx,offset bg
int 21h
	ret
background endp

menu proc

call background
mov ah,02
mov bh,00
mov dl,20
mov dh,7
int 10h

mov ah,09
mov dx,offset msg4
int 21h


mov ah,07
int 21h
menu endp

cls proc
mov ah,06
mov bh,41h
mov cx,00
mov dx,184fh
int 10h
ret
cls endp


ext proc
	mov ah,4ch
	int 21h
	ext endp
	end begin