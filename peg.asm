.model small
.stack
.data
.code
begin:

mov ah,02
mov dl,30h
mov cx,000ah
boom: int 21h
inc dl
add dl,30h
int 21h
sub dl,30h
loop boom
mov ah,4ch
int 21h
end begin
