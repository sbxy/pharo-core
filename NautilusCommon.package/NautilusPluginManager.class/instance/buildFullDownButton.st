items creation
buildFullDownButton

	^ IconicButton new 
		target: self;
		actionSelector: #fullDown;
		labelGraphic: (self iconClass iconNamed: #downFull);
		color: Color transparent;
		extent: 24 @ 24;
		borderWidth: 0