expanding-collapsing
expandedToggleImage
	^ expandedToggleImage ifNil: [expandedToggleImage := ImageMorph new image: self expandedForm].