createInstanceWithValue: address generator: gen
	"Create an instance of NBExternalAddress with given value.
	Answer the resulting oop in EAX"
	| result asm proxy |
	asm := gen asm.
	proxy := gen proxy.
	
	result := gen reserveTemp.
	
	asm mov: address to: result.
	proxy createInstanceOf: NBExternalAddress size: NBExternalType pointerSize.
	asm mov: result to: asm ECX.
	proxy storePointer: asm ECX intoVarbytes: asm EAX at: 0.

	gen releaseTemps: 1.
	
	^ asm EAX