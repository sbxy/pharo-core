isInlineIfNil

	| assertNone assertOneOrNone |
	
	self methodNode compilationContext optionInlineIfNil ifFalse: [ ^false ]. 
	self receiver isBlock ifTrue: [^ false].
	self isCascaded ifTrue: [^ false].
	(#(ifNil: ifNotNil: ifNil:ifNotNil: ifNotNil:ifNil:) includes: self selector) ifFalse: [^ false].
	self arguments do: [:node | node isBlock ifFalse: [^ false]].
	assertNone := [:block | 
		block arguments isEmpty ifFalse: [self notify: 'ifNil: takes zero-arg block'. ^ false]
	].
	assertOneOrNone := [:block | 
		block arguments size > 1 ifTrue: [self notify: 'ifNotNil: takes zero- or one-arg block'. ^ false]
	].
	self selector == #ifNil: 	
		ifTrue: [assertNone value: self arguments first].
	self selector == #ifNil:ifNotNil: 
		ifTrue: [assertNone value: self arguments first.  assertOneOrNone value: self arguments last].
	self selector == #ifNotNil: 
		ifTrue: [assertOneOrNone value: self arguments first].
	self selector == #ifNotNil:ifNil: 
		ifTrue: [assertOneOrNone value: self arguments first. assertNone value: self arguments last].
	^ true