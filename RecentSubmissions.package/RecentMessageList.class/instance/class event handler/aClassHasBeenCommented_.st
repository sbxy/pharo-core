aClassHasBeenCommented: anEvent

	anEvent newStamp notNil
		ifTrue:[self addMethodReference: (self createAClassReference: anEvent)]