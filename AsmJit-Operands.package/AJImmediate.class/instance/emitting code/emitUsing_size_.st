emitUsing: emitter size: aSize

	label ifNotNil: [
		"this will set the label offset"
		emitter setLabelPosition: label. 
	].

	aSize = 1 ifTrue: [ ^ emitter emitByte: self asByte ].
	aSize = 2 ifTrue: [ ^ emitter emitWord: self asWord ].
	aSize = 4 ifTrue: [ ^ emitter emitDWord: self asDWord ].
	aSize = 8 ifTrue: [ ^ emitter emitQWord: self asQWord ].
	
	self error: aSize asString, 'bytes is an invalid immediate value size'