replaceNode: aNode withNode: anotherNode 

	self add: anotherNode before: aNode.
	sequence remove: aNode ifAbsent: [self error].