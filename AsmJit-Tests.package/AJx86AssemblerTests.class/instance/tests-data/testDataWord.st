testDataWord
	
	| data|
	asm nop.
	data := asm dw: #[16r34 16r12].
	
	self assert: asm bytes equals: #[144   16r34 16r12].
	
	