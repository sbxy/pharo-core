registerBase: base class: regClass rex: rexSymbol values: names 
	| val |
	val := 0.
	rexSymbol == #required
		ifTrue: [ val := 16r100 ].
	rexSymbol == #prohibited
		ifTrue: [ val := 16r200 ].
	val := val + base.
	names
		do: [ :regName | 
			| reg |
			reg := regClass code: val name: regName.
			self classPool at: regName put: reg.
			Codes at: val put: regName.
			val := val + 1 ]