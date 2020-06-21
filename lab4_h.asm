TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	
.code
main PROC
	mov ecx, 16
	call ClrScr
LI1:
	mov ebx, ecx
	mov ecx, 16
LI2:
	mov eax, 16
	mul ebx
	sub eax, 16
	add eax, ecx
	dec eax
	call SetTextColor
	mov eax, 70
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