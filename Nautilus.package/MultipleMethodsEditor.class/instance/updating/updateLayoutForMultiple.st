updateLayoutForMultiple

	self 
		addMorph: container
		fullFrame: (LayoutFrame identity
						bottomOffset: -25).
	self 
		addMorph: buttonsContainer
		fullFrame:  ((0@1 corner: 1@1) asLayoutFrame 
						topOffset: -25).