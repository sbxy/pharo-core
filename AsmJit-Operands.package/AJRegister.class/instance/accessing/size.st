size
	^ 1 << (( code bitAnd: RegTypeMask ) >> 4).