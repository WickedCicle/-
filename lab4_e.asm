TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data

.code
main PROC
	mov ecx, 50
LI:
	mov eax, 41
	call RandomRange
	sub eax, 20
	call WriteInt
	call CrLf
	loop LI

	mov eax, 100000
	call Delay

	exit
main ENDP
END main