testAssembly2

	self 
		assert: [ :a|
		asm 
			push: a BP;
			mov: a SP -> a BP;
			mov: 16r400 -> a RAX;
			mov: a BP -> a SP;
			pop: a RSP;
			ret. ]
		bytes: #[
			102 85
			102 139 236 
			72	199	192 0 4 0 0
			102 139 229 
			92 
			195]
	