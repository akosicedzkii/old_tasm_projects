.model large
.stack
.data
.code

start:

mov ah,02h
mov dl,43h
int 21h
mov dl,45h
int 21h
mov dl,44h
int 21h
mov dl,45h
int 21h
mov dl,52h
int 21h
mov dl,49h
int 21h
mov dl,43h
int 21h

mov ah,4ch
int 21h

end start

