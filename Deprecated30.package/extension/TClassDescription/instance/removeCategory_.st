removeCategory: aString 
	"Remove each of the messages categorized under aString in the method 
	dictionary of the receiver. Then remove the category aString."
	self deprecated: 'Use removeProtocol:' on: '28 August 2013' in: #'Pharo3.0'.
	self removeProtocol: aString