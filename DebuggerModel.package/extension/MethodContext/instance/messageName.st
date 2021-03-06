messageName
	"Answer the message selector of this context.
	 If the method is unbound we can still usefully answer its old selector."

	| selector |
	selector := self methodSelector.
	^(selector ~~ self method selector
	    and: [selector beginsWith: 'DoIt'])
		ifTrue: [self method selector]
		ifFalse: [selector]