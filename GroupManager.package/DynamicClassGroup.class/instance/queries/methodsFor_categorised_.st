methodsFor: aClass categorised: aSymbol

	aSymbol ifNil: [ "all" 
		^ self methodsFor: aClass ].

	^ (aClass methodsInProtocol: aSymbol) sort: [:a :b | a selector < b selector ]