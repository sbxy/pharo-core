jumpTo: aLabel ifImmediate: aLocation
	asm decorateWith: '#jumpTo:ifImmediate::' 
	during: [ asm 
				test: aLocation with: 1;
				jnz: aLabel ]