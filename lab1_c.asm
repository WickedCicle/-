TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	Monday EQU <1>
	Tuesday EQU <2>
	Wednesday EQU <3>
	Thursday EQU <4>
	Friday EQU <5>
	Saturday EQU <6>
	Sunday EQU <7>
	list BYTE Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

.code
main PROC
	call DumpRegs

	mov eax, 100000
	call Delay

	exit
main ENDP
END main