.model small
.stack
.code
	
		begin:
		
		main proc
				call input
				test al,00001000b
                jz button1
		button1 proc
			mov dx,378h
			mov al,00000001b
			out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main1
				main1:call main
			mov dx,378h
			mov al,00000010b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
               jne main2
				main2:call main
			mov dx,378h
			mov al,00000100b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main3
				main3:call main
			mov dx,378h
			mov al,00001000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
               jne main4
				main4:call main
			mov dx,378h
			mov al,00010000b
            out dx,al
			call Delay
			call Delay
			
			call input
				test al,00001000b
                jne main5
				main5:call main
				button11:
				jmp button1
			mov dx,378h
			mov al,00100000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
               jne main6
				main6:call main
			mov dx,378h
			mov al,01000000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main7
				main7:call main
			mov dx,378h
			mov al,10000000b
            out dx,al
			call Delay
			call Delay
			call input
			test al,00001000b
            jne main8
			main8:
			call main
		loop button11
		
		button1 endp
		
                test al,00010000b
                jz button2
				
				
			button2 proc
			
			mov dx,378h
			mov al,10000000b
			out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main9
				main9:call main
			mov dx,378h
			mov al,01000000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main10
				main10:call main
			mov dx,378h
			mov al,00100000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main11
				main11:call main
			mov dx,378h
			mov al,00010000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main12
				main12:call main
			mov dx,378h
			mov al,00001000b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main13
				main13:call main
				button22:
				jmp button2
			mov dx,378h
			mov al,00000100b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main14
				main14:call main
			mov dx,378h
			mov al,00000010b
            out dx,al
			call Delay
			call Delay
			call input
				test al,00001000b
                jne main15
				main15:call main
			mov dx,378h
			mov al,00000001b
            out dx,al
			call Delay
			call Delay
			call input
			test al,00001000b
                jne main16
				main16:call main
		loop button22
		button2 endp
				test al,00100000b
                jz button3
				button3:
				call exit
				test al,01000000b
                jz button4
				
				button4 proc
		mov dx,378h
            	mov al,11110000b
                out dx,al
		call Delay
		call Delay
		call input
				test al,00001000b
                jne main17
				main17:call main
		mov dx,378h
		mov al,00001111b
                out dx,al
		call Delay
		call Delay
		call input
				test al,00001000b
                jne main18
				main18:call main
		loop button4
		
		button4 endp
		
				test al,10000000b
				jnz button5
				button5 proc
					mov dx,378h
					mov al,11111111b
					out dx,al
					call Delay
					call Delay
					call input
					test al,00001000b
					jne main19
					main19:call main
					
				mov dx,378h
				mov al,00000000b
                out dx,al
				call Delay
				call Delay
				call input
				test al,00001000b
                jne main20
				main20:call main
		loop button5
		button5 endp
				
		
		
		main endp
		input proc
		
		mov dx,379h
        in al,dx
		
		input endp
		
		Delay proc
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
	Delay endp
       exit:
                mov ah,4ch
                int 21h
end begin