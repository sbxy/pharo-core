printDWord: value

	| str |
	str := value printStringBase: 16.
	
	[str size < 8] whileTrue: [ str:= '0',str ].

	^ '16r', str