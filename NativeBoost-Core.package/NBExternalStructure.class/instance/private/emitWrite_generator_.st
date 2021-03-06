emitWrite: aFieldName generator: gen
	| offset type asm size rcvr fieldAddr |
			
	gen requestor: self class.
	type := self class fields typeOf: aFieldName.
	offset := self class fields offsetOf: aFieldName.
	rcvr := gen reserveTemp.
	fieldAddr := gen reserveTemp.

	asm := gen asm.
	type loader: (NBSTMethodArgument new stackIndex: 0).
	type emitPush: gen. "push value on stack"
		
	gen proxy stackValue: 1.  "receiver oop"
	asm mov: asm EAX to: rcvr.
	
	NBExternalStructureType new 
		objectClass: self class;
		fetchStructAddressFrom: rcvr gen: gen.
	
	"now, in EAX the address to first byte of external structure"
	offset > 0 ifTrue: [
	 	asm add: asm EAX with: offset ].
	
	asm mov: asm EAX to: fieldAddr.

	gen emitFailureTest. "important to check if everything ok, before we write value to receiver"
	
	size := type typeSize.
	
	"just copy the value from stack to the struct field"
	
	asm 
		mov: fieldAddr to: asm EAX.	
	offset := 0.
	[ size >= 4 ] whileTrue: [
		asm 
			mov: asm ESP ptr + offset to: asm ECX;
			mov: asm ECX to: asm EAX ptr + offset.
		size := size - 4.
		offset := offset + 4.
	].

	size >= 2  ifTrue: [
		asm 
			mov: asm ESP ptr16 + offset to: asm CX;
			mov: asm CX to: asm EAX ptr16 + offset.
		size := size - 2.
		offset := offset + 2.
	].

	size > 0  ifTrue: [
		" last byte "
		asm 
			mov: asm ESP ptr8 + offset to: asm CL;
			mov: asm CL to: asm EAX ptr8 + offset.
	].

	"answer the receiver"
	asm mov: rcvr to: asm EAX.
	gen epilogue.
	gen emitFailureHandler.
	
	^ gen
	