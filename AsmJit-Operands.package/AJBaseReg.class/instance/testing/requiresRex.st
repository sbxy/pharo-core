requiresRex 
	"Answer true if use of this register requires that the instruction have a REX prefix.
	This can be because the register cannot be accessed except with REX (high bank or 64-only low byte)
	or because the register is 64-bits wide"
	
	^(code & RegRequiresRexMask) ~~ 0