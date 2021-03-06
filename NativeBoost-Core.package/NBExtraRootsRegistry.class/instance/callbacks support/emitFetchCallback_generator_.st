emitFetchCallback: index generator: gen
	"index are one, returned from #registerCallback "
	| reg temp |
	index isMem 
		ifTrue: [ temp := index ]
		ifFalse: [ temp := gen reserveTemp. gen asm mov: index to: temp ].
	pool at: #callbacks ifAbsent: [
		self at: #callbacks put: WeakArray new ].	
	reg := self emitOopAt: #callbacks generator: gen.
	reg := gen proxy fetchPointer: temp ofObject: reg.
	
	index isMem ifFalse: [ gen releaseTemps: 1 ].
	^ reg
