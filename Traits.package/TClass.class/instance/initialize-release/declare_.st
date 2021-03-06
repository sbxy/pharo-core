declare: varString 
	"Declare class variables common to all instances. Answer whether 
	recompilation is advisable."

	| newVars conflicts |
	newVars :=  (varString subStrings: ' ') collect: [:x | x asSymbol].
	conflicts := false.
	
	(self classPool keys reject: [:x | newVars includes: x]) do: [:var | self removeClassVarNamed: var].
	
	(newVars reject: [:var | self classPool includesKey: var]) do: [:var | "adding"
			"check if new vars defined elsewhere"
			(self innerBindingOf: var) 
				ifNotNil: [(DuplicatedVariableError new) variable: var;
						signal: var , ' is defined elsewhere'.
					conflicts := true]].
	newVars notEmpty
		ifTrue: 
			[self classPool: self classPool.
			"in case it was nil"
			newVars do: [:var | self classPool declare: var from: Undeclared]].
	^conflicts