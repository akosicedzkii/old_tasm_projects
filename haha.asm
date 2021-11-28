.model small
.stack
.data
        sample db "Welcome php!$"
.code
start:
mov ax,@data
mov ds,ax

mov ah,09h
mov dx,offset sample
int 21h
mov ah,4ch
int 21h
end start
