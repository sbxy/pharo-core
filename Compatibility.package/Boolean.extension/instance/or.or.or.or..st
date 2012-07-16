*compatibility
or: block1 or: block2 or: block3 or: block4
	"Nonevaluating alternation without deep nesting.
	The receiver is evaluated, followed by the blocks in order.
	If any of these evaluates as true, then return true immediately,
		without evaluating any further blocks.
	If all return false, then return false."

	self deprecated: 'use a or:[b or:[c or:[d or:[e]]]] instead' on: '5 February 2010' in: 'Pharo1.2'.
	self
		ifTrue: [ ^ true ].
	block1 value
		ifTrue: [ ^ true ].
	block2 value
		ifTrue: [ ^ true ].
	block3 value
		ifTrue: [ ^ true ].
	block4 value
		ifTrue: [ ^ true ].
	^ false