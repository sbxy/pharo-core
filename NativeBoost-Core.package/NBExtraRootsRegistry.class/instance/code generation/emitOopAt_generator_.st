emitOopAt: aName generator: gen

	"emit code for fetching an oop at given name from registry"
	
	| asm proxy index |
	
	proxy := gen proxy.
	asm := gen asm.
	index := pool at: aName.
	
	asm decorateWith: 'NBExtraRootsRegistry at: ', aName printString , ' (' , index asString , ')' during: [  
		asm mov: cell asUImm32 to: asm EAX.
		asm mov: asm EAX ptr to: asm EAX.  "array oop -> EAX"
	
		proxy fetchPointer: index-1 ofObject: asm EAX. ].
	"EAX <- oop"
	^ asm EAX