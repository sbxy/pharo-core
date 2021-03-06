storeRemoteTemp: name inVector: tempVectorName
	| tempIndex tempVectorIndex tempVector |

	tempVector := tempVectorStack detect: [:each | each name = tempVectorName].
	tempVectorIndex := tempVector indexForVarNamed: name.
	tempIndex := self currentScope indexForVarNamed: tempVectorName.

	self addPending: (Message selector: #storeRemoteTemp:inVectorAt: arguments: (Array with: tempVectorIndex with: tempIndex))