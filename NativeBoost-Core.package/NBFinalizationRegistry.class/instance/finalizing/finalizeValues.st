finalizeValues 
	"Finalize any values, which happen to be stocked in finalization list, due to some weak references become garbage"
	
	sema critical: [ | item next |
		item := list swapWithNil.
		[ item notNil ]	whileTrue: [
			next := item next.
			[ item finalizeValues ] on: Exception fork: [:ex | ex pass ].
			
			item markAsFree: nextFreeIndex.
			nextFreeIndex := item index.
			item := next.
		]
	].
