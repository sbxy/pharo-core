testJumps
	
	asm 
		label: #label1;
		nop;
		nop;
		nop;
		jz: #label1.
		
	self assert: asm bytes =  #(144 144 144 116 251) asByteArray.

	
	asm 
		reset; noStackFrame;
		label: #label1.
		126 timesRepeat: [ asm nop ].
		asm jz: #label1.
	self assert: (asm bytes size = 128).
	
	asm 
		reset; noStackFrame;
		label: #label1;
		nop;
		nop;
		nop;
		jmp: #label1.
		
	self assert: asm bytes =  #(144 144 144 235 251) asByteArray.
	
	asm
		reset; noStackFrame;
		jmp: #label1;
		label: #label1.
		
	self assert: asm bytes =  #(16rEB 0 ) asByteArray.
		
