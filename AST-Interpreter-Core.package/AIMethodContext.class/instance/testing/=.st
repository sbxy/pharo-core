= anAIMethodContext
	(super = anAIMethodContext) ifFalse: [^false].
	(self receiver = anAIMethodContext receiver) ifFalse: [^false].
	^true