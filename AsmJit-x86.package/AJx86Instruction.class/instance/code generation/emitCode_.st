emitCode: asm
	"do not generate machine code if it is already there"
	machineCode ifNotNil: [ ^ self ].
	
	"make sure all operands are converted"
	operands ifNotNil: [ operands := operands collect: #asAJOperand ].
	
	machineCode := WriteStream on: (ByteArray new: 16).		
	description emitUsing: self operands: operands.

	machineCode := machineCode contents.