cleanUp

	| tagfp |
	tagfp := self class falsePositiveBeginningTag.
	manifestClass class methodsDo: [ :method |
		((method selector asString beginsWith: tagfp) or:
			[method selector asString beginsWith: tagfp])
				ifTrue: [self removeObsoleteFalsePositiveOf: method] ]
	
	


