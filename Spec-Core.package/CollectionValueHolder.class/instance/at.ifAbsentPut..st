protocol
at: index ifAbsentPut: block

	| result |
	result := contents at: index ifAbsentPut: block.
	self contentsChanged: block value.
	^ result