updateTextArea

	self textArea ifNil: [^self].
	self selectedNode 
		ifNil:  [self textArea visible: false]
		ifNotNil: [
			(self selectedNode isInspectable)
				ifTrue: [self textArea visible: true]
				ifFalse: [self textArea hide]]