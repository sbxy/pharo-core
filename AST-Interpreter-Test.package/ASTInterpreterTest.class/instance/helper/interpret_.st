interpret: aString
	| result |
	
	"context homeContext: thisContext".
	interpreter resetContext: context.
	result := interpreter interpretDoIt: (self compile: aString).
	
	self assert: interpreter context = context.
	^ result