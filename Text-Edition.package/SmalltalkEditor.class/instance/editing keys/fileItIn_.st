fileItIn: aKeyboardEvent
	"File in the selection; invoked via a keyboard shortcut, -- for now, cmd-shift-G."

	Smalltalk tools userManager canDropOSFile ifFalse: [ ^ false ].
	self fileItIn.
	^ true