emitCodeAtOffset: offset assembler: asm

	position := offset.
	self emitCode: asm.
	next ifNotNil: [ next emitCodeAtOffset: offset + self machineCodeSize assembler: asm ].