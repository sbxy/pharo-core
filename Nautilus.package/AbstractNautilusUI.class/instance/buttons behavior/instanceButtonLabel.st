instanceButtonLabel
	| label |
	
	label := 'Class side' asMorph emphasis: 2.
	^self selectedClass 
		ifNil: [label]
		ifNotNil: [:class | 
			class theMetaClass hasMethods ifTrue: [label emphasis: 1] ifFalse:[label]]
	
	