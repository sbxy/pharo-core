prepareArgumentUsing: gen

	"prepare the ByteString argument.
	Allocate a space for string on stack, then copy string contents there
	and add terminating null character "
	
	| asm stringOop len loop done donePreparing notNil |
	
	asm := gen asm.
	
	loop := asm uniqueLabelName: 'loop'.
	done := asm uniqueLabelName: 'done'.
	notNil  := asm uniqueLabelName: 'notNil'.
	donePreparing := asm uniqueLabelName: 'donePreparing'.
	    
	loader emitLoad: gen.

	"reserve after emitting load, otherwise, if proxy using stackpointer temp, it will be clobbered"
	address := gen reserveTemp.  
	stringOop := gen reserveTemp.
	len := gen reserveTemp.

	asm mov: EAX to: stringOop.
	
	gen optStringOrNull ifTrue: [
		"allow passing nil as string, effectively will push null pointer as argument"
		gen proxy nilObject.
		asm 
			cmp: EAX with: stringOop;
			jne: notNil;
			mov: 0 to: address;  "null pointer"
			jmp: donePreparing.
	].
	asm label: notNil.
	gen proxy isBytes: stringOop.
	
	asm or: EAX with: EAX.
	asm jz: gen failedLabel.
	
	gen proxy byteSizeOf: stringOop.
	asm mov: EAX to: len.
	asm inc: EAX. "add 1 byte for terminating null character"
	gen reserveStackBytes: EAX andStoreAddrTo: address.

	gen proxy varBytesFirstFieldOf: stringOop.

	asm decorateWith: ' copy string contents to the stack ' during: [
	asm 
		push: ESI;
		push: EDI;
		mov: EAX to: ESI;
		mov: address to: EDI;
		mov: len to: ECX;
"		rep; movsb;  -- is flat memory model has ES=DS ? "
	label: loop;
		dec: ECX;
		jl: done;
		mov: ESI ptr to: AL;
		mov: AL to: EDI ptr;
		inc: ESI;
		inc: EDI;
		jmp: loop;
	label: done;
		mov: 0 to: EDI ptr8;  "store null-terminating character"
		pop: EDI;
		pop: ESI.
	].
	gen releaseTemps: 2.  "keep the address reserved, otherwise it will be clobbered"
	asm label: donePreparing   