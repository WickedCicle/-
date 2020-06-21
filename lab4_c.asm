TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	

.code
main PROC
	call ClrScr
	xor ebx, ebx
	mov ecx, 2
	mov dl, 59
	mov dh, 14
LI:
	call GotoXY
	call ReadInt
	add ebx, eax
	inc dh

	loop LI

	call GotoXY
	xchg ebx, eax
	call WriteInt

	mov eax, 100000
	call Delay

	exit
main ENDP
END main