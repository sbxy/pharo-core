label: aNameOrLabel ifPresent: anExceptionBlock
	| label |
	label := aNameOrLabel.
	label isString 
		ifTrue: [ label := self labelNamed: label ].
	
	label isSet 
		ifTrue: [ ^ anExceptionBlock cull: label ].
	
	label isSet: true.
	^ self addInstruction: label.  