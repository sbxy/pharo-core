newRightButton
	"Answer a new button for scrolling right."

	^(ControlButtonMorph
			on: self
			getState: nil
			action: #scrollRight
			label: #rightButtonLabel)
		hResizing: #rigid;
		vResizing: #spaceFill;
		cornerStyle: #square;
		extent: self buttonWidth asPoint