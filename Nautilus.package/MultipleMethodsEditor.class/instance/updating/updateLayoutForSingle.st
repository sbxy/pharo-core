updateLayoutForSingle

	current ifNil: [ ^ self ].
	self 
		addMorph: current
		fullFrame: LayoutFrame identity.
					
	current color: Color white.
