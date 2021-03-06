pushAsValue: gen
	| asm |
	asm := gen asm.

	asm push:
		(gen proxy positive32BitValueOf: (loader emitLoad: gen)).

	gen optCheckFailOnEveryArgument ifTrue: [
		gen proxy ifFailedEmit: [  gen failWithMessage: 'Argument coercion failed: positive 32-bit integer value expected' ].
	].