stack
	|context stack limit|
	
	stack := OrderedCollection new.
	context := self.
	limit := 1.
	
	[limit := limit + 1.
	context isNil or: [limit > 40]] whileFalse: [ 
		stack add: context.
		context := context homeContext. ].
	
	^ stack