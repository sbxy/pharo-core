varBytesFirstFieldOf: oop 
	"Answer the address of first byte in oop in EAX.
	 oop must be of a variable byte format"
	
	asm 
		mov: oop to: asm EAX;
		add: asm EAX with: objectFormat varBytesFirstField 