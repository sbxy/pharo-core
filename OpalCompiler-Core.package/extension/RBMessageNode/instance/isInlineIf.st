isInlineIf
	self methodNode compilationContext optionInlineIf ifFalse: [ ^false ]. 
	self receiver isBlock ifTrue: [^ false].
	self isCascaded ifTrue: [^ false].
	(#(ifTrue: ifFalse: ifTrue:ifFalse: ifFalse:ifTrue:) includes: self selector) ifFalse: [^ false].
	self arguments do: [:node | node isBlock ifFalse: [^ false]].
	self arguments do: [:block |
		block arguments isEmpty ifFalse: [
			OCSemanticError new
				node: self;
				compilationContext: self methodNode compilationContext;
				messageText: 'ifTrue:ifFalse: takes zero-arg blocks';
				signal.
			^ false
		]
	].
	^ true