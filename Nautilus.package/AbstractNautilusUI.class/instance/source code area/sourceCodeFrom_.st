sourceCodeFrom: aTextMorph

	aTextMorph ifLocked: [ ^ aTextMorph textMorph text ].

	^ self sourceCode