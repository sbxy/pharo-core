addAndClassifySelector: selector withMethod: compiledMethod inProtocol: category notifying: requestor 
	| priorMethodOrNil priorOriginOrNil oldProtocol newProtocol |
	
	priorMethodOrNil := self
		compiledMethodAt: selector
		ifAbsent: [].
	priorMethodOrNil ifNotNil: [ priorOriginOrNil := priorMethodOrNil origin ].
	
	"We categorize first, so the users can use the categorization at the add moment"			
	oldProtocol := self organization categoryOfElement: selector.
	SystemAnnouncer uniqueInstance
		suspendAllWhile: [ self organization classify: selector under: category ].
	
	self addSelectorSilently: selector withMethod: compiledMethod.
	
	newProtocol := self organization categoryOfElement: selector.
	(priorMethodOrNil isNil or: [ priorOriginOrNil ~= compiledMethod origin ])
		ifTrue: [
			SystemAnnouncer uniqueInstance
				methodAdded: compiledMethod
				selector: selector
				inProtocol: category
				class: self
				requestor: requestor]
		ifFalse: [
			SystemAnnouncer uniqueInstance
				methodChangedFrom: priorMethodOrNil
				to: compiledMethod
				selector: selector
				inClass: self
				oldProtocol: oldProtocol
				newProtocol: newProtocol
				requestor: requestor]