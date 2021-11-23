section .data:
message: db "Hello world!", 0xA
message_lenght: equ $ - message
	
	
section .text:
	global _start
	
_start:
	mov eax, 0x4                 ; syscall selector
	mov ecx, 0x1                 ; use stdout as the file descriptor
	mov ecx, message             ; use the message as the buffer
	mov edx, message_lenght      ; supply the lenght
	int 0x80                     ; linux interrupt
	
	; exit
	
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80
