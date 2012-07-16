special objects
newCompactClassesArray
	"Smalltalk compactClassesArray"
	"Return the array of 31 classes whose instances may be
	represented compactly"
	^ Array new: 31 streamContents: [ :str |
		(self compactClassesArray) do: [ :c |
				(self globals includesKey: c name)
					ifTrue: [ str nextPut: (self globals at: c name) ]
					ifFalse: [ str nextPut: nil ]
			]
		]