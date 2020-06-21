TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	var1 BYTE 0FFh

.code
main PROC
	xor eax, eax
	mov al, var1
	call DumpRegs
	add al, 1
	call DumpRegs
	add al, 1
	call DumpRegs

	mov eax, 100000
	call Delay
	exit
main ENDP
END main