value: anObject
	self ensureReceiver ifFalse: [ ^ nil ].
	
	^self receiver 
		perform: selector 
		with: anObject