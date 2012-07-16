accessing colors
lineColorForNode: aNode
	"Answer a good color to use for drawing the lines that connect members of the hierarchy view.
	Used the cached color, or derive it if necessary by finding the receiver or 
	the first owner (up to my root) that is not transparent, then picking a contrasting color.
	Fall back to black if all my owners are transparent."

	| colored |
	^ lineColorBlock
		ifNotNil: [lineColorBlock value: aNode]
		ifNil: [colored := self color isTransparent
				ifTrue: [self firstOwnerSuchThat: [:o | o isWorldOrHandMorph not and: [o color isTransparent not]]]
				ifFalse: [self].
			colored 
				ifNil: [Color black]
				ifNotNil: [colored color luminance > 0.5
					ifTrue: [Color black]
					ifFalse: [Color white]]]
	