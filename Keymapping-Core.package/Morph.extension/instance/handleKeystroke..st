*Keymapping-Core-override
handleKeystroke: anEvent 
	"System level event handling."
	
	anEvent wasHandled
		ifTrue: [^ self].
	
	self allowsKeymapping 
		ifTrue: [
			self dispatchKeystrokeForEvent: anEvent.
			anEvent wasHandled
				ifTrue: [^ self]].	
	
	(self handlesKeyStroke: anEvent)
		ifFalse: [^ self].
	anEvent wasHandled: true.
	self keyStroke: anEvent.
	^ self eventHandler ifNotNil: [:handler | handler keyStroke: anEvent fromMorph: self ].