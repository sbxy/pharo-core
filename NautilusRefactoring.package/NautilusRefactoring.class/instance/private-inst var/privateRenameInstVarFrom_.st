privateRenameInstVarFrom: aClass

	^ self class: aClass andInstVariable: [ :class :variable || name |
		name := self 
			request: 'Enter the new variable name:'
			initialAnswer: variable.

		name ifNil: [ ^ nil ].

		RBRenameInstanceVariableRefactoring
			model: environment
			rename: variable
			to: name asSymbol
			in: class ]