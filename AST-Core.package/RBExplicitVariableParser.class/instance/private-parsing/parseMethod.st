parseMethod
	| methodNode | 
	
	self useVariable: RBArgumentNode during: [methodNode := self parseMessagePattern].
	
	self pushScope: methodNode.
	
	self parsePragmas.
	self addCommentsTo: methodNode.
	
	methodNode body: self sequenceNodeClass new.
	(self parseStatements: false into: methodNode body).
	
	pragmas ifNotNil: [ methodNode pragmas: pragmas ].
	^methodNode