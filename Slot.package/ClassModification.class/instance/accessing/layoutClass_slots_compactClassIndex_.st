layoutClass: layoutClass slots: slotArray compactClassIndex: compactClassIndex
	| parentLayout newScope newLayout |
	parentLayout := self superLayout.
	newScope := parentLayout slotScope extend: slotArray.
	newLayout := layoutClass extending: parentLayout scope: newScope host: self target.
	newLayout compactClassIndex: compactClassIndex.
	self layout: newLayout