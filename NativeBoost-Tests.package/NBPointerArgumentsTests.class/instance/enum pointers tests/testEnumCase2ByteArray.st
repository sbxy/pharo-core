testEnumCase2ByteArray 
	self should: [self readEnumPtrCase2: (self enumByteArray: self class enumClass BBB)] raise: NBCodeGenerationError. 