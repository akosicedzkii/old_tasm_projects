.model large
.stack
.data
.code

start:

mov ah,02h
mov dl,41h
int 21h

mov ah,4ch
int 21h

end start

