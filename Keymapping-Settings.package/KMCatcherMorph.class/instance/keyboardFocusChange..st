event handling
keyboardFocusChange: aBoolean
	super keyboardFocusChange: aBoolean.
	focused := aBoolean.
	focused
		ifTrue: [ self color: (UITheme current textEditorNormalFillStyleFor: self) ]
		ifFalse: [ self color: (UITheme current textEditorDisabledFillStyleFor: self) ].
	^ true