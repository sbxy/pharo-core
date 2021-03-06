emitCopy: asm 
	"Emit code to copy elementSize bytes from ESP ptr -> EAX ptr "
	| toCopy offset |
	
	toCopy := self class elementSize.
	
	toCopy > 8 ifTrue: [ ^ self emitCopyUsingLoop: asm ].
	
	offset := 0.
	[ toCopy >= 4 ] whileTrue: [
		asm 
			mov: asm ESP ptr + offset to: asm ECX;
			mov: asm ECX to: asm EAX ptr + offset.
			toCopy := toCopy - 4.
			offset := offset + 4.
	].

	toCopy >= 2  ifTrue: [
		asm 
			mov: asm ESP ptr16 + offset to: asm CX;
			mov: asm CX to: asm EAX ptr16 + offset.
		toCopy := toCopy - 2.
		offset := offset + 2.
	].

	toCopy > 0  ifTrue: [
		" last byte "
		asm 
			mov: asm ESP ptr8 + offset to: asm CL;
			mov: asm CL to: asm EAX ptr8 + offset.
	].
