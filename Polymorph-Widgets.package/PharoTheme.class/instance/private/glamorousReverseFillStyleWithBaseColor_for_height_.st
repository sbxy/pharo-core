glamorousReverseFillStyleWithBaseColor: aColor for: aMorph height: anInteger
	
	| top bottom |
	top := aColor twiceLighter.
	bottom := aColor.
	^(GradientFillStyle ramp: {
			0.0->bottom.
			0.7->top.})
		origin: aMorph bounds origin;
		direction: 0 @ anInteger;
		radial: false