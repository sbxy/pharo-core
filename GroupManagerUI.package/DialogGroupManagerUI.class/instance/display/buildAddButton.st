buildAddButton

	^ (PluggableButtonMorph
			on: self 
			getState: #addState 
			action: #addAction 
			label: #addLabel)
			hResizing: #spaceFill;
			yourself