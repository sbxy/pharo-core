generateCallgateCode
		
	"Answer a byte array of generated native code for gate function.
	We assume that caller reserves two temporaries on his stack frame
	[EBP-4], [EBP-8] for saving return address and pritimiveMethod oop"

	| asm primitiveMethod savedMethodOop returnAddr |

	asm :=  self newAssembler noStackFrame.

	savedMethodOop := EBP ptr - 4. 
	returnAddr := EBP ptr - 8.
	
	primitiveMethod := NBInterpreterProxy fnAddressAt: #primitiveMethod.
	
	asm
		mov: primitiveMethod to: EAX;
		call: EAX;  " retrieve a primitive method oop "
		mov: EAX to: savedMethodOop;
		pop: returnAddr; "store return address"
		pop: EAX; "function to call"
		call: EAX;  " call the function "
		push: returnAddr; "push return addr back on stack"
		push: EAX; " save return value "
		push: EDX;
		mov: primitiveMethod to: EAX;
		call: EAX;  " retrieve a primitive method oop "
		sub: EAX with: savedMethodOop;
		add: ESP ptr+8 with: EAX;  " current - old + returnAddress "
		pop: EDX;
		pop: EAX;
		ret.
		
	^ asm bytes
