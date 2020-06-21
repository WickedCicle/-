TITLE      (.asm)

; This program
; Last update:

INCLUDE Irvine32.inc
.data
	var1 BYTE 100
	var2 SBYTE -65
	var3 WORD 1563
	var4 SWORD -6391
	var5 DWORD "sdfd", 0
	var6 SDWORD 'g'
	var7 DB 'Hello'
	var8 BYTE 10 DUP (0)
	var9 REAL4 -0.7

.code
main PROC
	
	call DumpRegs

	mov eax, 100000
	call Delay

	exit
main ENDP
END main