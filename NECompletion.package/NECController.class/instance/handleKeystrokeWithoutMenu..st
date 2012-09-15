keyboard
handleKeystrokeWithoutMenu: aKeyboardEvent

	| isSpaceKey |
	
	isSpaceKey := #(0 32 ) includes: aKeyboardEvent keyValue.
	
	(isSpaceKey & aKeyboardEvent controlKeyPressed
	or: [aKeyboardEvent keyCharacter = Character tab and: [editor atCompletionPosition and: [aKeyboardEvent controlKeyPressed not]]])
		 ifTrue: [
			self openMenu.
			^ true ].
		
	(self smartInput: aKeyboardEvent keyValue)
		ifNotNil: [^ true].
	
	(aKeyboardEvent anyModifierKeyPressed not and: [ aKeyboardEvent keyCharacter isCompletionCharacter ]) ifTrue: [
		self resetCompletionDelay ].
	^ false