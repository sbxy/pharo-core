private
internalResetSelection

	selectionHolder reset.
	self getList isEmpty not
		ifTrue: [ self setSelectedIndex: 1 ]