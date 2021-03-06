testMovImmediate
	"8bit immediate to 8bit register"
	self 
		assert: [:a | a mov: 16r12 to: a AL ] 
		bytes: #[16rB0     16r12].
		
	"16bit immediate to 16bit register (requires 16bit fallback prefix)"
	self 
		assert: [:a | a mov: 16r1234 to: a AX ] 
		bytes: #[16r66 16rB8     16r34 16r12].
	
	"32bit immediate to 32bit register"
	self 
		assert: [:a | a mov: 16r12345678 to: a EAX ] 
		bytes: #[16rB8     16r78 16r56 16r34 16r12].
	
	"64bit immediate to 64bit register (requires REX prefix)"
	self 
		assert: [:a | a mov: 16r123456789ABCDEF0 to: a RAX ] 
		bytes: #[2r01001000 16rB8    16rF0 16rDE 16rBC 16r9A 16r78 16r56 16r34 16r12].
		
	"32bit immediate sign-extended to 64bit register (REX prefix)"
	self
		assert: [:a | a mov: 16r12345678 to: a RAX]
		bytes: #[ 2r01001000 16rc7 "ModR/M"16rc0    16r78 16r56 16r34 16r12 ]