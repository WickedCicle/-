TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	val1 SDWORD 8
	val2 SDWORD -15
	val3 SDWORD 20

.code
main PROC
	xor eax, eax
	sub eax, val2
	add eax, 7
	sub eax, val3
	add eax, val1
	call DumpRegs

	mov eax, 100000
	call Delay

	exit
main ENDP
END main