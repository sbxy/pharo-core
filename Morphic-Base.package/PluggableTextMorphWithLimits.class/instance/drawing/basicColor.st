basicColor

	^ extension
		ifNil: [ color]
		ifNotNil: [ 
			extension fillStyle 
				ifNil: [ color ]
				ifNotNil: [ :fillStyle | fillStyle asColor ]].