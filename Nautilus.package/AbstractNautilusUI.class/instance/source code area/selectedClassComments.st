selectedClassComments

	^ self selectedClass
		ifNil: ['']
		ifNotNil: [:class| class comment]