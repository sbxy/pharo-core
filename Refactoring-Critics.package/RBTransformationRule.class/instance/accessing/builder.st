builder
	^ builder
		ifNil: [ 
			self resetResult.
			builder ]