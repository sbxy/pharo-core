inspectableContents

	| result |
	result := OrderedCollection new.
	self contents 
		do: [:each | result addAll: each inspectableContents].
	^ result.