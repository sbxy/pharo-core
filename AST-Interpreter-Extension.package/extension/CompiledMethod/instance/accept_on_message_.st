accept: visitor on: receiver message: aMessage
	self isReflective ifTrue: [ 
		^ visitor 
			invokeReflectiveMethod: self
			on: receiver 
			message: aMessage].
	
	self isPrimitive ifTrue: [ 
			^ visitor 
				invokePrimitiveMethod: self 
				on: receiver 
				message: aMessage ].
			
	^ visitor 
		invokeMethod: self 
		on: receiver 
		message: aMessage