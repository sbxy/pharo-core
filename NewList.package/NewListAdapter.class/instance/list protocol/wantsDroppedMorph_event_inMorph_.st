wantsDroppedMorph: aMorph event: anEvent inMorph: source

	^ aMorph dragTransferType == #dragTransfer 
		ifTrue: [ 
			self dropItemSelector ifNil: [ ^ false ].
			self wantsDropSelector ifNil: [ ^ true ].
			(self model perform: self wantsDropSelector with: aMorph passenger) ]
		ifFalse: [ self model wantsDroppedMorph: aMorph event: anEvent inMorph: source ]