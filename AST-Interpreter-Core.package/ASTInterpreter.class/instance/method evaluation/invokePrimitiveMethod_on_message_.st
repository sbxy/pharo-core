invokePrimitiveMethod: aCompiledMethod on: receiver message: aMessage
	| result |
	
	result := receiver tryPrimitive: aCompiledMethod primitive withArgs: aMessage arguments.
	(self hasPrimitiveFailed: result)  ifFalse: [ ^ result].
	
	"primitive failed"
	^ self
		invokeMethod: aCompiledMethod 
		on: receiver 
		message: aMessage