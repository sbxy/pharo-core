drawMouseDownBackgroundFor: item at: index on: aCanvas

	index == self mouseDownIndex
		ifTrue: [	aCanvas 
					frameRectangle: (self selectionFrameForItem: item at: index)
					width: 1
					colors: {Color gray. Color transparent}
					dashes: #(1 1)]