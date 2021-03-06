newFocusIndicatorMorphFor: aMorph
	"Answer a new focus indicator for the given morph."

	|radius|
	radius := aMorph focusIndicatorCornerRadius.
	^ BorderedMorph new
		fillStyle: Color transparent;
		borderStyle: (SimpleBorder new
			 width: 2;
			baseColor: (self glamorousBaseSelectionColorFor: aMorph));
		bounds: aMorph focusBounds