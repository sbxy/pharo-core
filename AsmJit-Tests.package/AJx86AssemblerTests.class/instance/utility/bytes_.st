bytes: aBlock
	asm := self newAssembler.
	aBlock value: asm.
	^ asm bytes