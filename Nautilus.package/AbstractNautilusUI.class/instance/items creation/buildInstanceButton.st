buildInstanceButton

	^ (CheckboxMorph
		on: self 
		selected: #instanceButtonState 
		changeSelected: #instanceButtonAction)
		getLabelSelector: #instanceButtonLabel;
		labelClickable: true;
		 hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		yourself
	"^ (PluggableButtonMorph
			on: self 
			getState: #instanceButtonState
			action: #instanceButtonAction
			label: #instanceButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap"