useVariable: aVariableNodeClass during: aBlock
	currentVariableNodeClass := aVariableNodeClass.
	^ aBlock ensure: [ currentVariableNodeClass := nil]