trunkCode
	self checkSession.

	^ trunkCode ifNil: [ | asm |
		asm := NativeBoost newAssembler noStackFrame.  "NO STACK FRAME, since we just jump to common entry point"

		asm
			mov: (0 asUImm32 label: (asm labelNamed: #index)) to: ECX; " callback index "
			mov: ((self callbackEnterAddress asUImm32) label: (asm labelNamed: #cbEnterAddress)) to: EAX;
			jmp: EAX.
		
		trunkCode := asm generatedCode.
	]
