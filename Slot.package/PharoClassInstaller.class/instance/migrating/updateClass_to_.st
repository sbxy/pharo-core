updateClass: oldClass to: newClass
	| compactClassIndex |
	
	compactClassIndex := oldClass indexIfCompact.
	compactClassIndex > 0
		ifTrue: [ newClass layout compactClassIndex: compactClassIndex ].
	
	self updateInstancesFrom: oldClass to: newClass