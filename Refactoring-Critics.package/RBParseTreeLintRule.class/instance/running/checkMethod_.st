checkMethod: aContext 
	(self matcher canMatchMethod: aContext compiledMethod) 
		ifFalse: [ ^ self ].
	(self matcher executeTree: aContext parseTree initialAnswer: nil) isNil 
		ifFalse: [ result addClass: aContext selectedClass selector: aContext selector ]