isRegIndex: aRegIndex

	^ self isReg and: [ self index == (aRegIndex bitAnd: RegCodeMask ) ]
