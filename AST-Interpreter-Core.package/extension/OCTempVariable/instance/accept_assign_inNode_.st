accept: anInterpeter assign: value inNode: aVariableNode
	self isArg ifTrue: [ 
		self error: 'Arguments cannot be assigned'.
	].
	"If it is not an arg, it is a normal temporary"
	^ anInterpeter write: value temporaryAt: -1 named: name