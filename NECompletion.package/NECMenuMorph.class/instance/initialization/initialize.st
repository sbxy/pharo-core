initialize
	super initialize.
	self color: self class backgroundColor.
	self borderStyle: (BorderStyle color: Color gray width: 1).
	self
		when: #positionChanged
		send: #updateDetail
		to: self