defaultAction
	<reflective: #unhandledErrorDefaultAction:message:>
 	^ Smalltalk globals 
		at: #UIManager
		ifPresent: [:class | class default unhandledErrorDefaultAction: self exception]
		ifAbsent: [ Transcript show: 'unhandled error' ].