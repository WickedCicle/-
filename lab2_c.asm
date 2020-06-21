TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	var1 BYTE 07Fh

.code
main PROC
	xor eax, eax
	mov al, var1
	call DumpRegs
	inc al
	call DumpRegs
	sub al, 080h
	call DumpRegs
	inc al
	call DumpRegs

	mov eax, 100000
	call Delay

	exit
main ENDP
END main