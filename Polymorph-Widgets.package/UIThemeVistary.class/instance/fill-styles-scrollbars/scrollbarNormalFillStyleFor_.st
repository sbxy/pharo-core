scrollbarNormalFillStyleFor: aScrollbar
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	|aColor c|
	aColor := (self scrollbarColorFor: aScrollbar) alphaMixed: 0.3 with: Color white.
	c := aColor alphaMixed: 0.9 with: Color black.
	^(GradientFillStyle ramp: {0.0->c. 0.15->aColor. 0.9->aColor. 1.0->c})
		origin: aScrollbar topLeft;
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0]);
		radial: false