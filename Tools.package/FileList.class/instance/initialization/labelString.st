labelString
	reference ifNil: [ ^ '[]' ].
	^ reference basename  contractTo: 50