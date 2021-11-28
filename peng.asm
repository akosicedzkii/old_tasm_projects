.model small
.stack
.data
.code
begin:

mov ah,02
mov dl,41h
mov cx,001ah
loops: int 21h
add dl,20h
int 21h
sub dl,20h
inc dl
loop loops
mov ah,4ch
int 21h
end begin
