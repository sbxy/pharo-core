selectUnchangedDefinitions
	"Selects all recognizable definitions for which there is already a definition in the current image, whose source is exactly the same."
	| change class tokens |
	Cursor read showWhile: 
	[1 to: changeList size do:
		[:i | change := changeList at: i.
		listSelections at: i put: false.

		(change type = #method
		 and: [(class := change methodClass) notNil
		 and: [class includesSelector: change methodSelector]]) ifTrue:
			[listSelections
				at: i
				put: change string withBlanksCondensed
					= (class sourceCodeAt: change methodSelector) asString withBlanksCondensed].

		(change type == #classComment
		and: [(class := change commentClass) notNil]) ifTrue:
			[listSelections at: i put: change string = class comment asString].

		change type == #doIt ifTrue:
			[tokens := change string parseLiterals.

			 ((tokens select:
				[:substr| #(subclass: variableSubclass: variableByteSubclass: variableWordSubclass:
							instanceVariableNames: classVariableNames: ) includes: substr])
					asSet size >= 3
			 and: [(class := Smalltalk globals at: tokens third ifAbsent: []) notNil
			 and: [class isBehavior]]) ifTrue:
				[listSelections
					at: i
					put: change string withBlanksCondensed
						= class definition withBlanksCondensed].

			(tokens size = 4
			 and: [tokens second == #class
			 and: [tokens third == #instanceVariableNames:
			 and: [(class := Smalltalk globals at: tokens first ifAbsent: []) notNil
			 and: [class isBehavior]]]]) ifTrue:
				[listSelections
					at: i
					put: change string withBlanksCondensed
						= class class definition withBlanksCondensed].

			(tokens size = 3
			 and: [tokens second == #removeSelector:
			 and: [(class := Smalltalk at: tokens first ifAbsent: []) isNil
			 	or: [class isBehavior and: [(class includesSelector: tokens third) not]]]]) ifTrue:
				[listSelections at: i put: true].

			(tokens size = 4
			 and: [tokens second == #class
			 and: [tokens third == #removeSelector:
			 and: [(class := Smalltalk at: tokens first ifAbsent: []) isNil
			 	or: [class isBehavior and: [(class class includesSelector: tokens fourth) not]]]]]) ifTrue:
				[listSelections at: i put: true]]]].

	self changed: #allSelections