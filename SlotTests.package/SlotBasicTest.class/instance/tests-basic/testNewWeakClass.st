testNewWeakClass

	aClass := self makeWithLayout: WeakLayout.
	
	self deny: aClass isCompact.
	self assert: aClass isPointers.
	self deny: aClass isFixed.
	self assert: aClass isWords.
	self assert: aClass isWeak.