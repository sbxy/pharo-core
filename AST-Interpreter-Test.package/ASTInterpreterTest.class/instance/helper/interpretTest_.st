interpretTest: aTest 
	| result |
	
	"context homeContext: thisContext".
	interpreter resetContext: context.
	result := interpreter interpret: (aTest ast body).
	
	self assert: interpreter context = context.
	^ result