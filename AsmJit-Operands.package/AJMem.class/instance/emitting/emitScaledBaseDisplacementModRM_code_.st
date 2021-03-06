emitScaledBaseDisplacementModRM: emitter code: rCode

	self assert: index index ~= RIDESP.
	(base index ~= RIDEBP and: [ displacement isZero ])
		ifTrue: [ 
			emitter emitMod: 0 reg: rCode rm: 4.
			^ emitter emitScale: shift index: index index base: base index ].
		
	displacement isInt8
		ifTrue: [ 
			emitter emitMod: 1 reg: rCode rm: 4.
			emitter emitScale: shift index: index index base: base index.
			displacement emitUsing: emitter size: 1 ]
		ifFalse: [ 
			emitter emitMod: 2 reg: rCode rm: 4.
			emitter emitScale: shift index: index index base: base index.
			displacement emitUsing: emitter size: 4 ].
	^ self