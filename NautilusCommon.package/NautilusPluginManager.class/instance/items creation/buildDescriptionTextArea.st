buildDescriptionTextArea
	
	^ (PluggableTextMorph
		on: self
		text: #getText
		accept: nil) 
			enabled: false;
			vResizing: #spaceFill;	
			hResizing: #spaceFill;
			yourself