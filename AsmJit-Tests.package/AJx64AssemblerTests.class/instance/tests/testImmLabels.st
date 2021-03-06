testImmLabels
	"test immediates with labels"

	| code pos |
	asm
		mov: RAX ptr -> EAX;
		mov: (16rFFFFFFFF asUImm label: (asm labelNamed: #foo)) to: EAX.
	code := asm generatedCode.
	pos := code offsetAt: #foo.
	self assert: (code bytes at: pos + 1) = 255.
	self assert: (code bytes at: pos + 2) = 255.
	self assert: (code bytes at: pos + 3) = 255.
	self assert: (code bytes at: pos + 4) = 255