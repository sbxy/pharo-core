getGroupHierarchy

	^ self selectedGroup 
		ifNil: [ {} ]
		ifNotNil: [:group |
			cachedHierarchy := self buildGroupHierarchyFor: group.
			cachedHierarchy sortedElements]