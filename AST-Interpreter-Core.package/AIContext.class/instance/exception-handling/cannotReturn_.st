cannotReturn: result

	closure notNil ifTrue:
		[^self cannotReturn: result to: self home sender].
	Smalltalk tools debugger
						openContext: thisContext
						label: 'computation has been terminated'
						contents: nil