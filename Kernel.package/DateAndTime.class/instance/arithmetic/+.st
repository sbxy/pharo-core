+ operand
	"operand conforms to protocol Duration"

	|  ticks |
	ticks := self ticks with: (operand asDuration ticks) collect: [:ticks1 :dticks | ticks1 + dticks ].

	^ self class basicNew
		ticks: ticks
		offset: self offset; 
		yourself.
