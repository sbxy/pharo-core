classVarNamed: aString put: anObject
	"Store anObject in the class variable."
	
	| symbol |
	symbol := aString asSymbol.
	(self classPool includesKey: symbol) ifFalse:  [^self error: 'no such lass var'].
	self classPool at: symbol put: anObject.