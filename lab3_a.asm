TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	var1 BYTE 1

.code
main PROC
	xor eax, eax
	mov al, var1
	mov bl, var1
	mov ecx, 5
	call DumpRegs
LI:
	add bl, al
	xchg bl, al
	call DumpRegs

	loop LI

	mov eax, 100000
	call Delay

	exit
main ENDP
END main