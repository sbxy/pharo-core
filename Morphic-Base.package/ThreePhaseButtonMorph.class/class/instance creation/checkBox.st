checkBox
	"Answer a button pre-initialized with checkbox images."
	| f |
	^self new
		onImage: (f := Smalltalk ui icons checkBoxOnIcon);
		pressedImage: (Smalltalk ui icons checkBoxPressedIcon);
		offImage: (Smalltalk ui icons checkBoxOffIcon);
		extent: f extent + (2@0);
		yourself
