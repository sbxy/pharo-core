testMovSxZx

	asm 
		movsx: asm AX to: asm EAX;
		movzx: asm AX to: asm EAX;
		movsx: asm AL to: asm EAX;
		movzx: asm AH to: asm EAX.

	self assert: asm bytes = 
	#[
		16r0F 16rBF 16rC0
		16r0F 16rB7 16rC0
		16r0F 16rBE 16rC0
		16r0F 16rB6 16rC4 ]

