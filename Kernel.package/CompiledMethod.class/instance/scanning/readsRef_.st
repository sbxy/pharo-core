readsRef: literalAssociation 
	"Answer whether the receiver loads the argument."
	| litIndex scanner |
	(litIndex := self indexOfLiteral: literalAssociation) = 0 ifTrue:
		[^false].
	litIndex := litIndex - 1.
	^(scanner := InstructionStream on: self) scanFor:
		[:b|
		b >= 64
		and:
			[b <= 95
				ifTrue: [b - 64 = litIndex]
				ifFalse:
					[b = 128
						ifTrue: [scanner followingByte - 192 = litIndex]
						ifFalse:
							[b = 132
							 and: [(scanner followingByte between: 128 and: 159)
							 and: [scanner thirdByte = litIndex]]]]]]