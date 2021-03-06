printOn: aStream 
	| aSelector className aClass |
	(class isNil or: [method isNil]) ifTrue: [^super printOn: aStream].
	aSelector := method selector.
	className := method methodClass name.
	aStream
		nextPutAll: (aClass name contractTo: self maxClassNameSize);
		nextPutAll: '(';
		nextPutAll: (className  contractTo: self maxClassNameSize);
		nextPutAll: ')';
		nextPutAll: ' >> ';
		nextPutAll: (aSelector 
					contractTo: self maxClassPlusSelectorSize - className size)