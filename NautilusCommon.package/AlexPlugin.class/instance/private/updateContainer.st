updateContainer

	^ text isEmpty
		ifTrue: [ container removeMorph: textMorph.
			container hide ]
		ifFalse: [
			container addMorph: textMorph.
			container show ]