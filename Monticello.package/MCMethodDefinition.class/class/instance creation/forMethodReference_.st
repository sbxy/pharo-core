forMethodReference: aMethodReference
	| definition |
	definition := self cachedDefinitions at: aMethodReference compiledMethod ifAbsent: [].
	(definition isNil
		or: [definition selector ~= aMethodReference selector
		or: [definition className ~= aMethodReference classSymbol
		or: [definition classIsMeta ~= aMethodReference classIsMeta
		or: [definition category ~= aMethodReference category]]]])
			ifTrue: [
				definition := self 
					className: aMethodReference classSymbol
					classIsMeta: aMethodReference classIsMeta
					selector: aMethodReference selector
					category: aMethodReference category
					timeStamp: aMethodReference timeStampString
					source: aMethodReference source.
				self cachedDefinitions at: aMethodReference compiledMethod put: definition].
	^ definition
	