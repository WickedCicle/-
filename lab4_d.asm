TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	text BYTE "Hello World", 0

.code
main PROC
	mov edx, OFFSET text
	mov ecx, 3
	mov eax, 1500
	call ClrScr
LI:
	call WriteString
	call Delay
	call ClrScr
	loop LI

	mov eax, 100000
	call Delay

	exit
main ENDP
END main