last
	"answer the last instruction in the list"
	| nn l |
	nn := self.
	[ (l := nn next) notNil ] whileTrue: [ nn := l ].
	^ nn