isInlineAndOr
	self methodNode compilationContext optionInlineAndOr ifFalse: [ ^false ]. 
	self receiver isBlock ifTrue: [^ false].
	self isCascaded ifTrue: [^ false].
	(#(and: or:) includes: self selector) ifFalse: [^ false].
	(self arguments allSatisfy: [ :each | each isBlock ])  ifFalse: [^ false].
	(self arguments allSatisfy: [ :each | each arguments isEmpty ])
			ifFalse: [
				self notify: 'and: (or:) takes zero-arg block'.
				^ false ].
	^ true