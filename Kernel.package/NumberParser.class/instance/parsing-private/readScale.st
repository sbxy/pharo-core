readScale
	"read the scale if any (stored in instVar).
    Answer true if found, answer false if none.
    If scale letter is not followed by a digit, this is not considered as an error.
    Scales are always read in base 10, though i do not see why..."

	scale := 0.
	sourceStream atEnd
		ifTrue: [ ^ false ].
	(sourceStream peekFor: $s)
		ifFalse: [ ^ false ].
	scale := self nextUnsignedIntegerOrNilBase: 10.
	scale
		ifNil: [ 
			scale := 0.
			(sourceStream peek ifNil: [ false ] ifNotNil: [ :nextChar | nextChar isLetter ])
				ifTrue: [ 
					sourceStream skip: -1.	"ungobble the s"
					^ false ]
				ifFalse: [ ^ true ] ].
	^ true