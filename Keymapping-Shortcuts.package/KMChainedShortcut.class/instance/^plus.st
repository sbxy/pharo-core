building
+ aCharacter 
	| last |
	last := self shortcuts last.
	self shortcuts removeLast.
	self addShortcut: last + aCharacter.