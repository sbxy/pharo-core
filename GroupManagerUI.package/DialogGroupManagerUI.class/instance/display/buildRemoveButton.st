buildRemoveButton

	^ (PluggableButtonMorph
			on: self 
			getState: #removeState 
			action: #removeAction 
			label: #removeLabel)
			hResizing: #spaceFill;
			yourself
