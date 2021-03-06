browseWith: anECContext

	(self guessTypeWith: anECContext)
		ifNotNil: [ :clazz|
			SystemNavigation new browseClass: clazz.
			^ true ].
	
	^ self
		findMethodWith: anECContext
		do: [ :class :method | 
			Smalltalk tools browser 
				fullOnClass: class 
				selector: method selector. 
			true ]
		ifAbsent: [ :selector | 
			SystemNavigation new 
				browseAllImplementorsOf: selector.
			true ]