newLines: anInteger 
	anInteger + IndentString size = 0 ifTrue: [codeStream space].
	anInteger timesRepeat: [codeStream cr].
	lineStart := codeStream position.
	indent timesRepeat: [codeStream nextPutAll: IndentString]