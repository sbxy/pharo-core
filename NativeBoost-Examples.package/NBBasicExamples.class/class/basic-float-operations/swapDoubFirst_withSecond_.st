swapDoubFirst: r1 withSecond: r2
 
    <primitive: #primitiveNativeCall module: #NativeBoostPlugin>

    ^ self nbCallout
		function: #( double ( double r1, double r2 ))
	    emit: [:gen :proxy :asm |
			"store r1 and r2 into the FPU stack"
	       asm fld: asm ESP ptr64.
	       asm fld: asm ESP ptr64 + 8.
			"swap the two topmost FPU stack elements"
			asm fxch: asm ST1.
 	   ]