initialization
initialize
	"Initialization code for RadioButtonGroupExample"

	container := PanelMorph new.
	
	container
		changeTableLayout;
		listDirection: #bottomToLeft.
	
	self instantiateMorphs.
	super initialize.