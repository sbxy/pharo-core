printRegister: register descriptionOn: s

	s nextPut: $".
	register descriptionOn: s.
	register influencingRegisters ifNotEmpty: [ :registers|
		s crtab nextPutAll: 'This register overlaps with '.
		registers do: [ :reg| s nextPutAll: reg name ] separatedBy: [ s nextPutAll: ', ']].
	s nextPut: $"