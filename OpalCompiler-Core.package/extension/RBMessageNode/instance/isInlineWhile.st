isInlineWhile
	
	self methodNode compilationContext optionInlineWhile ifFalse: [ ^false ]. 
	self isCascaded ifTrue: [^ false].
	(#(whileFalse: whileTrue: whileFalse whileTrue) includes: self selector) ifFalse: [^ false].
	self receiver isBlock ifFalse: [^ false].
	self receiver arguments isEmpty ifFalse: [self notify: 'while receiver block must have no arguments'. ^ false].
	self arguments isEmpty ifFalse: [
		self arguments first isBlock ifFalse: [^ false].
		self arguments first arguments isEmpty ifFalse: [self notify: 'while takes a zero-arg block as its argument'. ^ false].
	].
	^ true