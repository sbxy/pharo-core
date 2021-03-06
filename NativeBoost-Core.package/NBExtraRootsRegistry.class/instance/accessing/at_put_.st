at: aName put: anObject

	"register an object under given name."
	| sz index |
	sz := array size.
	index := sz + 1.
	(pool includesKey: aName) 
		ifTrue: [	index := pool at: aName ]
		ifFalse: [ pool at: aName put: index ].
		
	(index > array size) ifTrue: [
		array := array copyWith: anObject.
		self primAtMem: cell put: array.
		].
	
	array at: index put: anObject.
	^ anObject.
	
