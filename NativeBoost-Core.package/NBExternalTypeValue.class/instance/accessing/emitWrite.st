emitWrite

	^(self nbCalloutIn: thisContext sender)
		function: 'oop (oop value, ', self class valueType,' value)'
		emit: [ :gen :proxy :asm | |oop|
			oop := gen reserveTemp.
			asm pop: asm EAX;
				mov: asm EAX to: oop.
				
			proxy receiver.
			proxy varBytesFirstFieldOf:  asm EAX.
			
			self emitCopy: asm.
			
			asm mov: oop to: asm EAX.
			 ]