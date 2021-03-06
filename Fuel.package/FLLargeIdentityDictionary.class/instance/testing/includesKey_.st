includesKey: key

	| hash |
	^(keys at: (hash := key largeIdentityHash + 1))
		ifNil: [ false ]
		ifNotNil: [ :keyList | 
			key 
				ifNotNil: [ keyList fuelPointsTo: key ]
				ifNil: [
					1 to: (tallies at: hash) do: [ :index |
						(keyList at: index) == key ifTrue: [ ^true ] ].
					false ] ]