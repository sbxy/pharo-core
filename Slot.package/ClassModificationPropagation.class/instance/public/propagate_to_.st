propagate: aModification to: aTarget
	origin := aModification.
	target := aTarget.
	self layout: (target layout 
		reshapeFrom: origin oldLayout slotScope
		to: origin newLayout).