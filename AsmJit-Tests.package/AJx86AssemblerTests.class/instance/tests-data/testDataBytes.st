testDataBytes
	
	|data|
	data := self setUpDataBytes.
	
	self assert: asm bytes equals: #[144   16r12].