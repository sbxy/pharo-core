asHighByte
	self isHighByte
		ifTrue: [ ^ self ].
	self isLowByte
		ifFalse: [ Error signal: 'Can only convert AH, BH, CH, or DH to high byte' ].
	^ AJx86Registers
		generalPurposeWithIndex: self index + 2r100
		size: 1
		requiresRex: false
		prohibitsRex: true