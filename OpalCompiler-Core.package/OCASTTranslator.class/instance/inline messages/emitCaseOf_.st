emitCaseOf: aMessageNode

	| cases assocMessageNode  |
	
	cases := aMessageNode arguments first statements.
	cases ifEmpty: [ self backendError: 'At least one case required' forNode: aMessageNode ].
	valueTranslator visitNode: aMessageNode receiver.
	self emitAllButLastCases: cases.
	
	"last case without otherwise"
	methodBuilder pushDup.
	assocMessageNode := cases last.
	valueTranslator visitInlinedBlockNode: assocMessageNode receiver.
	methodBuilder send: #=.
	methodBuilder jumpAheadTo: #next if: false.
	methodBuilder popTop.
	self visitInlinedBlockNode: assocMessageNode arguments first.
	methodBuilder jumpAheadTo: #end.
	methodBuilder jumpAheadTarget: #next.
	methodBuilder send: #caseError.
	aMessageNode lastIsReturn 
		ifTrue: [
			(aMessageNode owningScope) isBlockScope 
				ifTrue: [methodBuilder blockReturnTop] 
				ifFalse: [methodBuilder returnTop]] 
		ifFalse: [self isEffectTranslator ifTrue: [methodBuilder popTop]].

	cases size timesRepeat: [methodBuilder jumpAheadTarget: #end].