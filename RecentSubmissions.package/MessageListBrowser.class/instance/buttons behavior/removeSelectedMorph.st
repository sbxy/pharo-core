removeSelectedMorph
	self selectedNode ifNotNil: [:n | 
		(self promptForRemove: n)
			ifTrue: [n removeMe]]