currentMorphIndex
	"Answer the index of the target morph that is considered the current leftmost."

	|x index|
	x := self scroller offset x.
	index := 1.
	self targetMorphs do: [:m |
		(x between: m left and: m right) ifTrue: [^index].
		index := index + 1].
	^index