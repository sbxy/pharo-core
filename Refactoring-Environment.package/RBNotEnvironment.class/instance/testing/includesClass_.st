includesClass: aClass 
	(environment includesClass: aClass) ifFalse: [^true].
	aClass selectorsAndMethodsDo: 
			[:each :meth | 
			(environment includesSelector: each in: aClass) ifFalse: [^true]].
	^false