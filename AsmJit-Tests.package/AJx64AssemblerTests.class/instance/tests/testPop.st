testPop
	"lower bank 64bit register"		
	self assert: [:a | a pop: a RSP ]
		bytes: #[ 16r5c ].