testIndexScales
	self
		assert: [ :a | a mov: RAX -> ((RCX ptr + RDX) * 1) ] bytes: #[16r48 16r89 16r04 16r11];
		assert: [ :a | a mov: RAX -> ((RCX ptr + RDX) * 2) ] bytes: #[16r48 16r89 16r04 16r51];
		assert: [ :a | a mov: RAX -> ((RCX ptr + RDX) * 4) ] bytes: #[16r48 16r89 16r04 16r91];
		assert: [ :a | a mov: RAX -> ((RCX ptr + RDX) * 8) ] bytes: #[16r48 16r89 16r04 16rD1].
	self
		assert: [ :a | a mov: (RCX ptr + RDX) * 1 -> RAX ] bytes: #[16r48 16r8B 16r04 16r11];
		assert: [ :a | a mov: (RCX ptr + RDX) * 2 -> RAX ] bytes: #[16r48 16r8B 16r04 16r51];
		assert: [ :a | a mov: (RCX ptr + RDX) * 4 -> RAX ] bytes: #[16r48 16r8B 16r04 16r91];
		assert: [ :a | a mov: (RCX ptr + RDX) * 8 -> RAX ] bytes: #[16r48 16r8B 16r04 16rD1]