okToChangeComment

	commentTextArea canDiscardEdits ifTrue: [^ true].
	commentTextArea update: #wantToChange.  "Solicit cancel from view"
	^ commentTextArea canDiscardEdits
