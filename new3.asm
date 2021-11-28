.model small
.stack
.data
.code

begin:

mov ah,06
mov cx,0
mov bh,01h
mov dx,0513h
int 10h


mov ah,06
mov cl,13h
mov ch,00h
mov bh,12h
mov dx,0527h
int 10h

mov ah,06
mov cl,27h
mov ch,00h
mov bh,23h
mov dx,053bh
int 10h

mov ah,06h
mov cl,3bh
mov ch,00h
mov bh,34h
mov dx,054fh
int 10h

mov ah,06h
mov cl,00h
mov ch,06h
mov bh,75h
mov dx,0b13h
int 10h

mov ah,06
mov cl,13h
mov ch,06h
mov bh,56h
mov dx,0b27h
int 10h

mov ah,06
mov cl,27h
mov ch,06h
mov bh,67h
mov dx,0b3bh
int 10h

mov ah,06
mov cl,3bh
mov ch,06h
mov bh,48h
mov dx,0b4fh
int 10h


mov ah,06h
mov cl,00h
mov ch,0ch
mov bh,89h
mov dx,1213h
int 10h

mov ah,06
mov cl,13h
mov ch,0ch
mov bh,09ah
mov dx,1227h
int 10h

mov ah,06
mov cl,27h
mov ch,0ch
mov bh,0abh
mov dx,123bh
int 10h

mov ah,06
mov cl,3bh
mov ch,0ch
mov bh,0bch
mov dx,124fh
int 10h


mov ah,06h
mov cl,00h
mov ch,013h
mov bh,0cdh
mov dx,1813h
int 10h

mov ah,06
mov cl,13h
mov ch,013h
mov bh,0deh
mov dx,1827h
int 10h

mov ah,06
mov cl,27h
mov ch,013h
mov bh,0efh
mov dx,183bh
int 10h

mov ah,06
mov cl,3bh
mov ch,013h
mov bh,0f0h
mov dx,184fh
int 10h

mov ah,02
mov bh,0
mov dl,5
mov dh,3
int 10h
mov ah,02
mov dl,'b'
int 21h
mov dl,'l'
int 21h
mov dl,'a'
int 21h
mov dl,'c'
int 21h
mov dl,'k'
int 21h


mov ah,02
mov bh,0
mov dl,25
mov dh,3
int 10h
mov ah,02
mov dl,'b'
int 21h
mov dl,'l'
int 21h
mov dl,'u'
int 21h
mov dl,'e'
int 21h



mov ah,02
mov bh,0
mov dl,45
mov dh,3
int 10h
mov ah,02
mov dl,'g'
int 21h
mov dl,'r'
int 21h
mov dl,'e'
int 21h
mov dl,'e'
int 21h
mov dl,'n'
int 21h

mov ah,02
mov bh,0
mov dl,67
mov dh,3
int 10h
mov ah,02
mov dl,'c'
int 21h
mov dl,'y'
int 21h
mov dl,'a'
int 21h
mov dl,'n'
int 21h

mov ah,02
mov bh,0
mov dl,5
mov dh,9
int 10h
mov ah,02
mov dl,'w'
int 21h
mov dl,'h'
int 21h
mov dl,'i'
int 21h
mov dl,'t'
int 21h
mov dl,'e'
int 21h



mov ah,02
mov bh,0
mov dl,25
mov dh,9
int 10h
mov ah,02
mov dl,'m'
int 21h
mov dl,'a'
int 21h
mov dl,'g'
int 21h
mov dl,'e'
int 21h
mov dl,'n'
int 21h
mov dl,'t'
int 21h
mov dl,'a'
int 21h


mov ah,02
mov bh,0
mov dl,45
mov dh,9
int 10h
mov ah,02
mov dl,'b'
int 21h
mov dl,'r'
int 21h
mov dl,'o'
int 21h
mov dl,'w'
int 21h
mov dl,'n'
int 21h


mov ah,02
mov bh,0
mov dl,67
mov dh,9
int 10h
mov ah,02
mov dl,'r'
int 21h
mov dl,'e'
int 21h
mov dl,'d'
int 21h


mov ah,02
mov bh,0
mov dl,5
mov dh,15
int 10h
mov ah,02
mov dl,'g'
int 21h
mov dl,'r'
int 21h
mov dl,'a'
int 21h
mov dl,'y'
int 21h


mov ah,02
mov bh,0
mov dl,25
mov dh,15
int 10h
mov ah,02
mov dl,'l'
int 21h
mov dl,'.'
int 21h
mov dl,'b'
int 21h
mov dl,'l'
int 21h
mov dl,'u'
int 21h
mov dl,'e'
int 21h



mov ah,02
mov bh,0
mov dl,45
mov dh,15
int 10h
mov ah,02
mov dl,'l'
int 21h
mov dl,'.'
int 21h
mov dl,'g'
int 21h
mov dl,'r'
int 21h
mov dl,'e'
int 21h
mov dl,'e'
int 21h
mov dl,'n'
int 21h

mov ah,02
mov bh,0
mov dl,67
mov dh,15
int 10h
mov ah,02
mov dl,'l'
int 21h
mov dl,'.'
int 21h
mov dl,'c'
int 21h
mov dl,'y'
int 21h
mov dl,'a'
int 21h
mov dl,'n'
int 21h



mov ah,02
mov bh,0
mov dl,5
mov dh,21
int 10h
mov ah,02
mov dl,'l'
int 21h
mov dl,'.'
int 21h
mov dl,'r'
int 21h
mov dl,'e'
int 21h
mov dl,'d'
int 21h

mov ah,02
mov bh,0
mov dl,25
mov dh,21
int 10h
mov ah,02
mov dl,'l'
int 21h
mov dl,'.'
int 21h
mov dl,'m'
int 21h
mov dl,'a'
int 21h
mov dl,'g'
int 21h
mov dl,'e'
int 21h
mov dl,'n'
int 21h
mov dl,'t'
int 21h
mov dl,'a'
int 21h



mov ah,02
mov bh,0
mov dl,45
mov dh,21
int 10h
mov ah,02
mov dl,'y'
int 21h
mov dl,'e'
int 21h
mov dl,'l'
int 21h
mov dl,'l'
int 21h
mov dl,'o'
int 21h
mov dl,'w'
int 21h


mov ah,02
mov bh,0
mov dl,67
mov dh,21
int 10h
mov ah,02
mov dl,'h'
int 21h
mov dl,'.'
int 21h
mov dl,'w'
int 21h
mov dl,'h'
int 21h
mov dl,'i'
int 21h
mov dl,'t'
int 21h
mov dl,'e'
int 21h

mov ah,4ch
int 21h
end begin

