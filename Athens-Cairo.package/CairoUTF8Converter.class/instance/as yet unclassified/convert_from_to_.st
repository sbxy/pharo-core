convert: aString from: start to: end
	| bs stream |
	self checkBufferSpace: 4*(end-start + 2).
	
	stream := ZnCharacterWriteStream on: (bs :=buffer writeStream).
	
	stream next: end-start+1 putAll: aString startingAt: start.
"	start to: end do: [:i| 	stream nextPut: (aString at: i) ].
"	"bs nextPut: 0."
	^ bs position.