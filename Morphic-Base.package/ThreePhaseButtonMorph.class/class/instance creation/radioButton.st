radioButton
	"Answer a button pre-initialized with radiobutton images."
	| f |
	^self new
		onImage: (f := Smalltalk ui icons radioButtonOnIcon);
		pressedImage: (Smalltalk ui icons radioButtonPressedIcon);
		offImage: (Smalltalk ui icons radioButtonOffIcon);
		extent: f extent + (2@0);
		yourself
