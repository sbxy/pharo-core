testOneClass

	| pointNode sorted |
	pointNode := SortHierarchicallyNode on: Point.
	sorted := SortHierarchically sortNodes: (Array with: pointNode).
	self assert: sorted size = 1.
	self assert: (sorted includes: pointNode)