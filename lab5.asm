TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	op DWORD ?
	op1 DWORD ?
	op2 DWORD ?
	op3 DWORD ?
	X DWORD ?
.code
main PROC
	mov eax, op1
	.WHILE eax < op2
		INC op
		mov ebx, op2
		.IF ebx == op3
			mov X, 2
		.ELSE
			mov X, 3
		.ENDIF
	.ENDW

	mov eax, 100000
	call Delay

	exit
main ENDP
END main