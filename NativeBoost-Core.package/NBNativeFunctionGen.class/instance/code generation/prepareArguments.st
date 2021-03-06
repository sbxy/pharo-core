prepareArguments

	| args offset |
	
	(self optCdecl or: [ self optStdcall ]) ifTrue: [
		args := fnSpec arguments.
	].
	
	offset := 8.  "+ return address + EBP"
	stackSize := 0.
	args withIndexDo: [:arg :i |  | sz |
		"arg size is 4 or 8"
		sz := arg type stackSize.
		stackSize := stackSize + sz.
		arg offset: offset.
		offset := offset + sz.
	].
