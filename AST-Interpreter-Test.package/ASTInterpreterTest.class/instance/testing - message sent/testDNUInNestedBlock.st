testDNUInNestedBlock
	| interpretationError dnu |
	
	[ self interpret: '[[ #someReceiver aMessageNotUnderstoodBySmallInteger: #someArgument ] value ] value' ]
		on: InterpretationError
		do: [ :err| interpretationError := err ].
	
	dnu := interpretationError cause. 
	self assert: dnu message selector equals: #aMessageNotUnderstoodBySmallInteger:.
	self assert: dnu message arguments equals: {#someArgument}.
	self assert: dnu receiver equals: #someReceiver.