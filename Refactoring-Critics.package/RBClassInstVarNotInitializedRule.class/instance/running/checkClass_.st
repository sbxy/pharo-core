checkClass: aContext 
	| definesVar class |
	aContext selectedClass isMeta ifTrue: 
		[ class := aContext selectedClass.
		definesVar := false.
		[ definesVar or: [ class isNil or: [ class isMeta not ] ] ] whileFalse: [
			definesVar := class instVarNames isEmpty not
				"TestCase defines Announcers but does not initialize it -> all tests are reported
				so we exclude it here"
				and: [ class ~= TestCase class
				and: [ aContext selectedClass ~= TestCase ] ].
			class := class superclass ].
		(definesVar and: [ (aContext selectedClass includesSelector: #initialize) not ]) ifTrue: [
			result addClass: aContext selectedClass ] ]