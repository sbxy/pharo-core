build

	| instanceSide classSide |
	topicToBuild := (HelpTopic named: rootToBuildFrom name).
	topicToBuild icon: (HelpIcons iconNamed: #pageIcon).
	topicToBuild contents: rootToBuildFrom comment.
	
	addMethods ifTrue: [ self buildSubnodesForMethods ].
	addSubclasses	 ifTrue: [ self buildSubnodesForSubclasses ].
	 