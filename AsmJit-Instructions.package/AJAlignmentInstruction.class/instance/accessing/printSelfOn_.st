printSelfOn: aStream  
	self align <= 1 ifTrue: [ ^ self ].
	
	aStream nextPut: $|.
	self align <= 8 
		ifTrue: [
			self align timesRepeat: [
				aStream nextPutAll: '----|']]
		ifFalse: [
			aStream 
				nextPutAll: (self align asString padded: #left to: 4 with: $ );
				nextPut: $|]