ok
	| boolean |

	boolean := (textEditorMorph textMorph text = confirmationTextEditorMorph textMorph text).
	boolean ifFalse: [ 
		self setInvalidLabel.
		textEditorMorph setText: ''.
		confirmationTextEditorMorph setText: ''.
		^ self ].

	self
		cancelled: false;
		applyChanges;
		delete