icon
	"Answer a form with an icon to represent the receiver"
	
	self item localChosen 
		ifTrue: [ ^ Smalltalk ui icons changeBlockIcon ].
	^ super icon