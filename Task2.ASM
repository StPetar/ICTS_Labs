	CLO
	JMP START
	DB 0		;int a;
	DB 0		;int b;
	DB 0		;int r;
	
START:
	MOV AL,41
	PUSH AL
	MOV BL,3
	PUSH BL
	CALL 30
	POP BL
	POP AL
	MOV[03],AL
	JMP OUTPUT

	
	ORG 30
	POP DL
	POP BL
	POP AL
	

	MOD AL,BL

	PUSH AL
	PUSH AL
	PUSH DL

	RET


OUTPUT:	
	ADD AL,30	;Convert to Hexa
	MOV [C0],AL	;Display R VALUE
	END

