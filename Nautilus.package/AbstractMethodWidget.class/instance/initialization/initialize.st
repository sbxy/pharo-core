initialize

	super initialize.
	MethodsIconsCache ifNil: [ MethodsIconsCache := WeakIdentityKeyDictionary new ]