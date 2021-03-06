class: oldClass instanceVariableNames: instVarString
	"This is the basic initialization message to change the definition of an existing Metaclass"

	| theClass |
	theClass := oldClass theNonMetaClass.
	
	theClass := self slotClassInstaller make: [ :builder |
		builder
			superclass: theClass superclass;
			name: theClass name;
			layoutClass: theClass layout class;
			slots: (theClass instVarNames collect: [:n | n asSlot ]);
			sharedVariables: theClass classVariablesString;
			sharedPools: theClass sharedPoolsString;
			traitComposition: theClass traitComposition;
			category: theClass category asString;
			classSlots: instVarString asSlotCollection ].
	^ theClass theMetaClass