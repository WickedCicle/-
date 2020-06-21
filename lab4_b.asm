TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	array DWORD 10 DUP (?)

.code
main PROC
	xor eax, eax
	mov ecx, LENGTHOF array
	mov esi, OFFSET array
LI:	
	call ReadInt
	mov [esi], eax
	add esi, TYPE array
	loop LI
	
	mov esi, OFFSET array
	mov ecx, LENGTHOF array
	mov ebx, TYPE array
	call DumpMem

	mov eax, 100000
	call Delay

	exit
main ENDP
END main