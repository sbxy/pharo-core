layoutFor: i startingAt: cumulatedHeight finishingAt: newCumulatedHeight

	^ (0 @ cumulatedHeight corner: 1 @ newCumulatedHeight) asLayoutFrame
		topOffset: (i == 1 ifTrue: [ 0 ] ifFalse: [ 2 ]);
		bottomOffset: (i == editors size ifTrue: [ 0 ] ifFalse: [ -2 ])