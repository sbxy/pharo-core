addOptionalButtonsTo: window at: fractions plus: verticalOffset 
	"If the receiver wishes it, add a button pane to the window, and
	answer the verticalOffset plus the height added"
	| delta buttons |
	self wantsOptionalButtons
		ifFalse: [^ verticalOffset].
	buttons := self optionalButtonRow color: Color white.
	buttons  layoutInset: (0@0 corner: 0@4).
	buttons := OverflowRowMorph new
		baseMorph: buttons;
		height: buttons minExtent y;
		setNameTo: buttons assureExtension externalName.
	delta := buttons minExtent y.

	window
		addMorph: buttons
		fullFrame: (fractions asLayoutFrame topOffset: verticalOffset; bottomOffset: (verticalOffset + delta)).

	^ verticalOffset + delta