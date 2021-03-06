recompileMethodTo: text inContext: aContext notifying: aNotifyer
	"The retrieved information has changed and its source must now be updated.
	 In this case, the retrieved information is the method of the given context."
	| newMethod recompilationContext |				
				
	(recompilationContext := (self createModelForContext: aContext) locateClosureHomeWithContent: text) 
		ifNil: [ ^ false ]. 
				
	newMethod := (self createModelForContext: recompilationContext) recompileCurrentMethodTo: text notifying: aNotifyer.
	newMethod ifNil: [ ^ false ].
	newMethod isQuick ifTrue: [
		recompilationContext := self downInContext: recompilationContext.
		recompilationContext jump: (recompilationContext previousPc - recompilationContext pc) ].
		
	self rewindContextToMethod: newMethod fromContext: recompilationContext. 
	
	"Use an alarm instead of triggering the notification directly, as the content of
	the editor can still be unaccepted. "
	self installAlarm: #contextChanged.
	^ true