generateMethod: aSelector withMarker: aSymbol forArgs: aNumber binary: aBoolean
	| source node |
	source := String streamContents: [:stream |
		aNumber < 1
			ifTrue: [stream nextPutAll: 'selector']
			ifFalse: [aBoolean
				ifTrue: [
					stream nextPutAll: '* anObject']
				ifFalse: [
					1 to: aNumber do: [:argumentNumber |
						stream
							nextPutAll: 'with:'; space;
							nextPutAll: 'arg'; nextPutAll: argumentNumber asString; space]]].
		stream cr; tab; nextPutAll: 'self '; nextPutAll: aSymbol].
	
	node := self class compiler
		source: source;
		class: self class;
		failBlock: [];
		translate.
	^(node generateWithSource) selector: aSelector; yourself