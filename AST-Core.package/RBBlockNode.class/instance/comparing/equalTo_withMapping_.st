equalTo: anObject withMapping: aDictionary 
	self class = anObject class ifFalse: [^false].
	self arguments size = anObject arguments size ifFalse: [^false].
	1 to: self arguments size
		do: 
			[:i | 
			((self arguments at: i) equalTo: (anObject arguments at: i)
				withMapping: aDictionary) ifFalse: [^false]].
	(self body equalTo: anObject body withMapping: aDictionary)
		ifFalse: [^false].
	self arguments do: [:each | aDictionary removeKey: each name].
	^true