insert: i after: instruction

	| next |
	i ifNil: [ "nothing to insert" ^ self ].
	i do: [:each |
		each increaseLevel: instruction level
		].
	next := instruction next.
	instruction next: i.
	i last next: next