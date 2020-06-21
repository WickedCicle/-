TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data

.code
main PROC
	mov ecx, 100
	call ClrScr
LI:
	mov eax, 120
	call RandomRange
	mov dl, al
	mov eax, 30
	call RandomRange
	mov dh, al
	call GotoXY
	mov eax, 70
	call WriteChar
	mov eax, 291
	call RandomRange
	add eax, 10
	call Delay
	loop LI

	mov eax, 100000
	call Delay

	exit
main ENDP
END main