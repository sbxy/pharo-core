canChangeLock

	self model
		ifNotNil: [:m |
			self canLockChangeSelector ifNotNil: [:s |
				^ m perform: s withEnoughArguments: { self } ]].
	^ true