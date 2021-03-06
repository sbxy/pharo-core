generateCallbackEnterCodeFor: callbackClass

	gen := (NBNativeFunctionGen new
		callType: callbackClass callType;
		fnSpec: callbackClass fnSpec;
		yourself).

	callbackClass numArgs: gen fnSpec arguments size.
	
	"optUseStackPointer should be turned off!!!"
	gen parseOptions: #( + optProxyLabels - optUseStackPointer +optReserveCallgateSpace  "+optDebug" ).
			
	^ gen generate: [:g |  
			
		asm := gen asm.
		proxy := gen proxy.

		"
		Callback entry , jumped directly from trunk.
		ECX == callback index
		"
		cbIndex := gen reserveTemp.
		asm 
			mov: ECX to: cbIndex. 


		self 
			saveExecutionState;
			emitArgumentsCoercion;
			activateCallbackContext: callbackClass. 
		
		"increment callback counter value"
		self incrementCallbackCounter.					
	
		asm label: #safetyLoop.
		self enterSmalltalkExecutiveImplementation.
		" we never reach here"
		asm jmp: #safetyLoop.
"========================================================"

"Callback return entry point. We jump here from 
#generateCallbackLeaveCodeFor:leaveAddr:
 
The stack must contain:
  - saved EBP
  - EAX
  - EDX
"

		asm label: #returnToC;
			pop: EBP.

		self restoreExecutionState.
		self decrementCallbackCounter.
		
		asm
			pop: EAX;
			pop: EDX.

	].