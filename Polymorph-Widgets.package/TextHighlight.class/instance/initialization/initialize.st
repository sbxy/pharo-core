initialize
	"Initialize the receiver."

	super initialize.
	lineHighligths := #().
	self
		color: Color yellow;
		lineRange: (1 to: 0);
		borderWidth: 0;
		borderColor: Color transparent;
		borderSides: #(top right bottom left);
		fillWidth: false