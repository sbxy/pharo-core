addTabContents: tab at: index delta: delta
	| process |
	process := tab retrieveMorph: [ :contents || leftOffset |
		contents ifNil: [ TabWithNoContents signalTab: tab ].
		
		index = 1
			ifTrue: [ leftOffset := 0 ]
			ifFalse: [ leftOffset := 2 ].
		
		contentsWrapper
			addMorph: contents
			fullFrame:
				(LayoutFrame identity
					leftFraction: (index - 1) * delta;
					leftOffset: leftOffset;
					rightOffset: -2;
					rightFraction: index * delta) ].
				
	process ifNotNil: [ processes add: process ]