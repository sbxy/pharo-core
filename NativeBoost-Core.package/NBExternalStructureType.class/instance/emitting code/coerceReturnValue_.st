coerceReturnValue: gen

	| asm proxy |
	
	asm := gen asm.
	proxy := gen proxy.
	
	self returnViaRegisters ifTrue: [
		| temp1 temp2 oop dataOop |

		"save struct value(s) into temps"
		temp1 := gen reserveTemp.
		asm mov: asm EAX to: 	temp1.
			
		objectClass instanceSize > 4 ifTrue: [
			temp2 := gen reserveTemp.
			asm mov: asm EDX to: temp2
		].
	
		"instantiate our struct"
		oop := gen reserveTemp.
		dataOop := gen reserveTemp.
		
		"create data buf for struct"
		proxy createInstanceOf: ByteArray size: objectClass instanceSize.
		asm mov: asm EAX to: dataOop.
		
		proxy varBytesFirstFieldOf: asm EAX. "in EAX is pointer to first byte of struct"

		"copy struct values into newly created instance"
		asm mov: temp1 to: asm ECX.
		asm mov: asm ECX to: asm EAX ptr.

		objectClass instanceSize > 4 ifTrue: [
			asm mov: temp2 to: asm ECX.
			asm mov: asm ECX to: asm EAX ptr + 4.
		].
	
		proxy pushRemappableOop: dataOop.
		
		"now create instance and set it's data ivar "
		proxy createInstanceOf: objectClass.
		asm mov: asm EAX to: oop.
		
		proxy popRemappableOop.

		proxy storePointer: self dataIvarIndex ofObject: oop withValue: asm EAX.
		
		"return an instance of objectClass as result"
		asm mov: oop to: asm EAX 
		
	] ifFalse: [
		
		"just return a previously instantiated struct oop"		
		asm mov: returnOop to: asm EAX
	]