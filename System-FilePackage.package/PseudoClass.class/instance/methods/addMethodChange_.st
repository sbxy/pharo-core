addMethodChange: aChangeRecord
	| selector |
	selector := self compiler parseSelector: aChangeRecord string.
	self organization classify: selector under: aChangeRecord category.
	self sourceCodeAt: selector put: aChangeRecord