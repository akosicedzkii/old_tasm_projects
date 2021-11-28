.model small
.stack
.code

main:
        readinput:
                mov dx,379h
                in al,dx
                test al,00001000b
                jz button1
                test al,00010000b
                jz button2
				test al,00100000b
                jz here
				test al,01000000b
                jz here1
				test al,10000000b
                jnz here2
                jmp readinput
		button1:
                
                mov dx,378h
            	mov al,00000001b
                out dx,al
		call Delay
		call Delay
		mov al,00000010b
                out dx,al
		call Delay
		call Delay
		mov al,00000100b
                out dx,al
		call Delay
		call Delay
		mov al,00001000b
                out dx,al
		call Delay
		call Delay
		mov al,00010000b
                out dx,al
		call Delay
		call Delay
		mov al,00100000b
                out dx,al
		call Delay
		call Delay
		mov al,01000000b
                out dx,al
		call Delay
		call Delay
		mov al,10000000b
                out dx,al
		call Delay
		call Delay
		loop button1
		jmp readinput
		
	here:
		jmp button3

	
        here1:
		jmp button5   
	here2:
		jmp button4
               
        button2:
		mov dx,378h
            	mov al,10000000b
                out dx,al
		call Delay
		call Delay
		mov al,01000000b
                out dx,al
		call Delay
		call Delay
		mov al,00100000b
                out dx,al
		call Delay
		call Delay
		mov al,00010000b
                out dx,al
		call Delay
		call Delay
		mov al,00001000b
                out dx,al
		call Delay
		call Delay
		mov al,00000100b
                out dx,al
		call Delay
		call Delay
		mov al,00000010b
                out dx,al
		call Delay
		call Delay
		mov al,00000001b
                out dx,al
		call Delay
		call Delay
		loop button2
		jmp readinput
	


        button3:
		mov dx,378h
            	mov al,11001100b
                out dx,al
                jmp readinput

        button4:
		mov dx,378h
            	mov al,11110000b
                out dx,al
		call Delay
		call Delay
		mov al,00001111b
                out dx,al
		call Delay
		call Delay
		mov al,11110000b
                out dx,al
		call Delay
		call Delay
		mov al,00001111b
                out dx,al
		call Delay
		call Delay
		loop button4

        button5:
		mov dx,378h
            	mov al,11111111b
                out dx,al
		call Delay
		call Delay
		mov al,00000000b
                out dx,al
		call Delay
		call Delay
		loop button5

	Delay:
		push bx
		push cx
		mov bx, 9000
	B:
		mov cx, 15000
	C:
		NOP
		Loop C
		dec bx
		jnz B
		pop cx
		pop bx
		ret

       exit:
                mov ah,4ch
                int 21h
end main
