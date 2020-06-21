TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data

.code
main PROC
	xor eax, eax
	mov ax, 05h
	add ax, 03h
	sub ax, 0Ch	
	call DumpRegs

	mov eax, 100000
	call Delay
	exit
main ENDP
END main