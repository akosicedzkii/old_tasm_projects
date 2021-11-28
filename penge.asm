.model small
.stack
.data
.code
begin:
mov ah,02
mov cx,0009
mov dl,'9'
loops: int 21h
dec dl
mov dh,'_'
int 21h
mov dh,dl
loop loops
mov dl,'0'
int 21h
mov ah,4ch
int 21h
end begin
