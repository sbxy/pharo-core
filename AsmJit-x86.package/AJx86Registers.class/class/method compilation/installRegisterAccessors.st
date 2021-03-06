installRegisterAccessors
	"this method creates simple accessors for all registers"

	| registerAccessorsCategory |
	
	registerAccessorsCategory := 'accessing registers'.	
	
	"remove all methods in the 'accessing register' category"
	self class methodDict values
		select: [ :method | method category = registerAccessorsCategory ]
		thenDo: [ :method | self class removeSelector: method selector ].
		
	self all 
		do: [ :register | | method |
			"install the direct accessor on this class"
			self installRegister: register accessorCategory: registerAccessorsCategory.
			"install the accessor on the assembler"
			self 
				installRegister: register 
				accessorCategory: registerAccessorsCategory
				on: (register isX86 ifTrue: [ AJx86Assembler ]  ifFalse: [ AJx64Assembler ])]
		displayingProgress: [ :each| each name ].