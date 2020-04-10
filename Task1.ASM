	CLO
	JMP START
	DB 0		;Create empty registers to store variables
	DB 0		;Create empty registers to store variables
	
	
	
START:
	MOV AL,3	;Store variable a into memory location 03
	MOV [03],AL
	MOV BL,3	;Store a==3 into memory location 04
	MOV [04],BL

CMP:	CMP AL,BL	;Compare the values stored in 03 and 04
	JZ  EQUAL	;If values are equal jump to EQUAL

	JMP OUTPUT	;Jump to output	
	
	
EQUAL:	
	MOV AL, [03]	;Copy value of 03 memory location into AL
	INC AL		;Increase the value of AL by 1
	MOV [03],AL	
	JMP OUTPUT		

OUTPUT:	
	ADD AL,30	;Convert to Hexa
	MOV [C0],AL	;Display
	END

