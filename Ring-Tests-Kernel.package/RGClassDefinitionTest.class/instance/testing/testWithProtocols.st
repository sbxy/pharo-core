testWithProtocols
	| newMethod newClass |
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newMethod:= (RGFactory current createMethodNamed: #add: parent: newClass)
					protocol: 'adding'; 
					sourceCode: 'add: newObject
									^self addLast: newObject'.
	
	newClass addMethod: newMethod.
	newClass addProtocol: 'accessing'.
	
	self assert: (newClass hasProtocols).
	self assert: (newClass protocols size = 2).
	self assert: (newClass includesProtocol: 'accessing').
	self assert: ((newClass methodsInProtocol: 'adding') size = 1).
	self assert: ((newClass methodsInProtocol: 'accessing') isEmpty)