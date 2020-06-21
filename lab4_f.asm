TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data

.code
main PROC
	mov ecx, 20
LI1:
	mov ebx, ecx
	mov ecx, 10
LI2:
	mov eax, 26
	call RandomRange
	add eax, 65
	call WriteChar
	loop LI2
	
	mov ecx, ebx
	call CrLf
	loop LI1
	
	mov eax, 100000
	call Delay

	exit
main ENDP
END main