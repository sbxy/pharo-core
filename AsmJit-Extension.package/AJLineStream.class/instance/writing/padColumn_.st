padColumn: maxCharacterPosition
	"pad the current line up to maxCharacterPosition with spaces"
	[writeStream position - lineStart < maxCharacterPosition]
		whileTrue: [writeStream space]