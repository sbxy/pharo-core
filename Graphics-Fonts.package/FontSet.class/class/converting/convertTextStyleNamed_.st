convertTextStyleNamed: aString 
	| style fontSet |
	(style := TextStyle named: aString) ifNil: [ ^ self error: 'unknown text style ' , aString ].
	fontSet := self fontSetClass: aString.
	style fontArray do: [ :each | fontSet compileFont: each ]