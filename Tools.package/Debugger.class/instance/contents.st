accessing
contents 
	"Depending on the current selection, different information is retrieved.
	Answer a string description of that information.  This information is the
	method in the currently selected context."

	^(contextStackIndex == 0)
		ifTrue: [ String new ]
		ifFalse: [
			contents ifNil: [
				self selectedContext
					ifNotNil: [ self selectedMessage ] 
					ifNil: [ String new ] ] ]