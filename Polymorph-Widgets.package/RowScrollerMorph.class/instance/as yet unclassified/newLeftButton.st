newLeftButton
	"Answer a new button for scrolling left."

	^(ControlButtonMorph
			on: self
			getState: nil
			action: #scrollLeft
			label: #leftButtonLabel)
		hResizing: #rigid;
		vResizing: #spaceFill;
		cornerStyle: #square;
		extent: self buttonWidth asPoint