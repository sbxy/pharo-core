printDetails: stream
	"Put my class>>selector and arguments and temporaries on the stream.  Protect against errors during printing."

	| string |
	self printOn: stream.  

	stream cr; tab; nextPutAll: 'Arguments and temporary variables: '; cr.
	string := [ self tempsAndValuesLimitedTo: 80 indent: 2] 
				ifError: [ '<<error during printing>>' ].
	stream nextPutAll: string.
	stream peekLast == Character cr 
		ifFalse: [ stream cr ].