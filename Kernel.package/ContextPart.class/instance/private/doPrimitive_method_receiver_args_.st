doPrimitive: primitiveIndex method: method receiver: receiver args: arguments
	"Simulate a primitive method whose index is primitiveIndex. The simulated receiver and arguments are given as arguments to this message. Any primitive which provikes execution needs to be intercepted and simulated to avoid execution running away."

	| value |
	<primitive: 19> "Simulation guard"
	"If successful, push result and return resuming context,
		else ^ PrimitiveFailToken"
"	(primitiveIndex = 19) ifTrue:
		[Smalltalk tools debugger
			openContext: self
			label:'Code simulation error'
			contents: nil].
"
	primitiveIndex = 83 "Object>>perform:[with:...]"
		ifTrue: [^self send: arguments first to: receiver
					with: arguments allButFirst
					super: false].
	primitiveIndex = 84 "Object>>perform:withArguments:"
		ifTrue: [^self send: arguments first to: receiver
					with: (arguments at: 2)
					super: false].
	primitiveIndex = 188 ifTrue: [
		arguments size = 2 ifTrue: [ "Object>>withArgs:executeMethod:"
			^MethodContext
				sender: self
				receiver: receiver
				method: (arguments at: 2)
				arguments: (arguments at: 1) ].
		arguments size = 3 ifTrue: [ "CompiledMethod class >> #receiver:withArguments:executeMethod:"
			^MethodContext
				sender: self
				receiver: (arguments at: 1)
				method: (arguments at: 3)
				arguments: (arguments at: 2) ] ].
	primitiveIndex = 189 ifTrue: [ "Object >> (#with:)*executeMethod"
		^MethodContext
			sender: self
			receiver: receiver
			method: arguments last
			arguments: arguments allButLast ].

	"Closure primitives"
	(primitiveIndex = 200 and: [receiver == self]) ifTrue:
		"ContextPart>>closureCopy:copiedValues:; simulated to get startpc right"
		[^self push: (BlockClosure
						outerContext: receiver
						startpc: pc + 2
						numArgs: arguments first
						copiedValues: arguments last)].

	((primitiveIndex between: 201 and: 205)                  "BlockClosure>>value[:value:...]"
	or: [primitiveIndex between: 221 and: 222]) ifTrue: "BlockClosure>>valueNoContextSwitch[:]"
		[^receiver simulateValueWithArguments: arguments caller: self].

	primitiveIndex = 206 ifTrue:                                            "BlockClosure>>valueWithArguments:"
		[^receiver simulateValueWithArguments: arguments first caller: self].

	primitiveIndex = 120 ifTrue:[  "FFI method"
		value := method literals first tryInvokeWithArguments: arguments. ] 
	ifFalse:[
		value := self simulatePrimitive: primitiveIndex in: method receiver: receiver  arguments: arguments ].
	
	^ (self isFailToken:  value)
		ifTrue: [value]
		ifFalse: [self push: value]
		