testAssembly1
	
	asm 
		push: EBP;
		mov: ESP -> EBP;
		mov: 1024 -> EAX;
		mov: EBP -> ESP;
		pop: EBP;
		ret.
	
	self assert: asm bytes = #(85 139 236 184 0 4 0 0 139 229 93 195) asByteArray