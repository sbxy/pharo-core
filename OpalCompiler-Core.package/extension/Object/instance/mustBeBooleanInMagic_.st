mustBeBooleanInMagic: context
	"Permits to redefine methods inlined by compiler.
	Take the ast node corresponding to the mustBeBoolean error, compile it on the fly with Opal and executes it as a DoIt. Then resume the execution of the context."

	| proceedValue sendNode selector expression  arguments methodNode method offset position |
	context skipBackBeforeJump.
	
	sendNode := context sourceNode sourceNodeForPC: context pc.
	position := sendNode irInstruction bytecodeOffset.
	offset :=  sendNode irInstruction nextBytecodeOffsetAfterJump - position.
	
	expression := sendNode  copy asSequenceNode transformLastToReturn.
	selector :=  #ExecuteUnOptimzedIn:. arguments := {(RBVariableNode named:'ThisContext')}.
	methodNode := RBMethodNode selector: selector arguments: arguments body: expression.
	
	context tempNames do: [:tempName |
		 methodNode :=methodNode rewriteTempNamedWrite: tempName forContext: context.
		 methodNode :=methodNode rewriteTempNamedRead: tempName forContext: context.
	].
	methodNode compilationContext: sendNode methodNode compilationContext.
	methodNode compilationContext 
		class: UndefinedObject;
		compilerOptions: #(+ optionIlineNone).	
	
	method := methodNode generateWithSource.
	
	context jump: offset.
	
	proceedValue  := self withArgs: {context} executeMethod: method.
	^proceedValue