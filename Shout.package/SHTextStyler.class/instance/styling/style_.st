style: aText 
	self terminateBackgroundStylingProcess.
	stylingEnabled
		ifTrue: [text := aText copy.
			self privateStyle: text.
			view ifNotNil: [:view2| view2 stylerStyled: text]]