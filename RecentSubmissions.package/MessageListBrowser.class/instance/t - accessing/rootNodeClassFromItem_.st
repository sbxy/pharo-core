rootNodeClassFromItem: anItem
	"the class used to build node"
	
	^self model useAsASet 
		ifTrue:[ MessageListInspectableNode ]
		ifFalse: [ MessageListNonInspectableNode ]