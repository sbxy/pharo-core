emitmmuMov: emitter operand1: op1 operand2: op2 operand3: op3
	
	self shouldBeImplemented.
	
	self assert: o1Flags ~= 0.
	self assert: o2Flags ~= 0.
	
      "Check parameters (X)MM|GP32_64 <- (X)MM|GP32_64|Mem|Imm"
	(op1 isMem & ((o1Flags bitAnd: OMEM) = 0)) |
	(op1 isRegTypeMM & ((o1Flags bitAnd: OMM) = 0)) |
	(op1 isRegTypeXMM & ((o1Flags bitAnd: OXMM) = 0)) |
	(op1 isRegTypeGPD & ((o1Flags bitAnd: OG32) = 0)) |
	(op1 isRegTypeGPQ & ((o1Flags bitAnd: OG64) = 0)) |
	(op2 isRegTypeMM & ((o2Flags bitAnd: OMM) = 0)) |
	(op2 isRegTypeXMM & ((o2Flags bitAnd: OXMM) = 0)) |
	(op2 isRegTypeGPD & ((o2Flags bitAnd: OG32) = 0)) |
	(op2 isRegTypeGPQ & ((o2Flags bitAnd: OG64) = 0)) |
	(op2 isMem & ((o2Flags bitAnd: OMEM) = 0)) |
	(op1 isMem & op2 isMem)
		ifTrue: [ self invalidInstruction ].
	
		
