close
	self critical: [ 
		stream ifNotNil: [ 
			(self isStdout or: [ self isStderr ])
				ifTrue: [ stream flush ]
				ifFalse: [ stream close ].
			stream := nil ] ]