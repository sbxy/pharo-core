emitmov: emitter operand1: dst operand2: src operand3: op3
	
	src isReg & dst isReg ifTrue: [
		self assert: (src isRegTypeGPB | src isRegTypeGPW | src isRegTypeGPD | src isRegTypeGPQ ).
		]. 
	
	" reg <- mem "
	dst isReg & src isRegMem ifTrue: [
		self assert: (dst isRegTypeGPB | dst isRegTypeGPW | dst isRegTypeGPD | dst isRegTypeGPQ ).
		src isMem
			ifTrue: [ (src base notNil and: [ src base is64 not ])
				ifTrue: [ Error signal: 'use a 64bit base register instead of ', src base asString, '(', (src base size * 8) asString, 'bit) for memory access on a 64bit CPU' ]]
			ifFalse:[ (src size = dst size) 
				ifFalse: [ Error signal: 'source ',src asString,' and destination ',dst asString,' need to have the same size' ]].
		^ emitter emitX86RM: 16r0000008A + dst isRegTypeGPB not asBit 
			size:  dst size 
			regOrCode:  dst 
			rm: src
		].

	" reg <- imm "
	dst isReg & src isImm ifTrue: [
		| immSize |
		immSize := dst size.
		"Optimize instruction size by using 32 bit immediate if value can fit to it"
		emitter is64BitMode & immSize = 8 & src isInt32 & (src relocMode == #RelocNone) ifTrue: [
			 emitter emitX86RM: 16rC7
				size: dst size
				regOrCode: 0 rm: dst.
	        immSize := 4
		] ifFalse: [
			emitter emitX86Inl: (immSize=1 ifTrue: [16rB0] ifFalse: [16rB8]) reg: dst.
		].
		^ emitter emitImmediate: src size: immSize
	].

	"mem <- reg"
	dst isMem & src isReg ifTrue: [
		self assert: (src isRegTypeGPB | src isRegTypeGPW | src isRegTypeGPD | src isRegTypeGPQ ).
		^ emitter emitX86RM: 16r88 + src isRegTypeGPB not asBit
			size: src size regOrCode: src rm: dst
	].

	"mem <- imm"
	dst isMem & src isImm ifTrue: [ | immSize |
		
		immSize := dst size <= 4 ifTrue: [ dst size ] ifFalse: [4].
		
		emitter emitX86RM: 16rC6 + ((dst size = 1) not) asBit
			size: dst size 
			regOrCode:  0 rm:  dst 
			immSize: immSize.
		
		^ emitter emitImmediate: src size: immSize
	].

	self invalidInstruction 
