commentPosition: aSymbol

	(self commentPositions includes: aSymbol) ifFalse: [ ^ self ].
	CommentPosition := aSymbol