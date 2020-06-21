TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	text DB "Hello World", 0

.code
main PROC
	xor eax, eax
	xor edx, edx
	mov edx, OFFSET text
	mov ecx, 4
	mov eax, black + (blue * 16)
LI:
	call WriteString
	add eax, 16
	inc eax
	call SetTextColor
	loop LI

	mov eax, 100000
	call Delay

	exit
main ENDP
END main