testRemoveInstVarNamed

	aClass := self make: [ :builder |
		builder 
			name: self aClassName;
			slots: #(x y z) 
		].
	aClass  := self make: [ :builder |
		builder 
			name: self aClassName;
			slots: #(x   z) 
		].

	self assert: aClass instVarNames = #(x z).