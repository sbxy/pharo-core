assertIsNBMethod: aMethod

	"Check that method having a native-boost primitive"
	
	
		((aMethod primitive = 117) and: [  | lit |  lit := aMethod literalAt: 1. 
			lit first = #NativeBoostPlugin and: [ lit second == #primitiveNativeCall]]) ifFalse: [ ^NBNativeCodeError signalError: ErrNoNBPrimitive ].