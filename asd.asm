.model small

.stack 100h

.data

prompt	 db	 "Enter a character: $"

msgout	 db	 "You entered: $"

.code

start:

mov	ax, @data

mov	ds, ax

; copy address of message to dx

mov	dx, offset prompt

call puts	 ; display prompt

call getc	; read character into al

mov	bl, al	; save character in bl

;display next message

mov	dx, offset msgout

call puts	 ; display msgout

; display character read from keyboard

mov	dl, bl	 ; copy character to dl

call putc

mov	ax, 4c00h ; return to ms-dos

int	21h

end start