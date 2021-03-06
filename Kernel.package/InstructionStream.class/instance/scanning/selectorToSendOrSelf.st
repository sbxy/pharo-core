selectorToSendOrSelf
	"If this instruction is a send, answer the selector, otherwise answer self."

	| byte byte2 |
	byte := self method at: pc.
	byte < 131 ifTrue: [^self].
	byte >= 176
		ifTrue: [
			"special byte or short send"
			byte >= 208
				ifTrue: [^self method literalAt: (byte bitAnd: 15) + 1]
				ifFalse: [^Smalltalk specialSelectorAt: byte - 176 + 1]]
		ifFalse: [
			byte <= 134 
				ifTrue: [ 
					byte2 := self method at: pc + 1.
					byte = 131 ifTrue: [^self method literalAt: byte2 \\ 32 + 1].
					byte = 132 ifTrue: [
						byte2 < 64 ifTrue: [^self method literalAt: (self method at: pc + 2) + 1]]	.
					byte = 133 ifTrue: [^self method literalAt: byte2 \\ 32 + 1].
					byte = 134 ifTrue: [^self method literalAt: byte2 \\ 64 + 1]]]