= anAIBlockContext

	(super = anAIBlockContext) ifFalse: [^false].
	(self homeContext = anAIBlockContext homeContext) ifFalse: [^false].
	(self exceptionHandler = anAIBlockContext exceptionHandler) ifFalse: [^false].
	^true