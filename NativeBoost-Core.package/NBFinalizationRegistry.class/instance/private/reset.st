reset
	sema critical: [
		nextFreeIndex := nil.
		list := WeakFinalizationList new.
		items := Array new: self initialSize.
		self formatItems: 1.
	]
	
	