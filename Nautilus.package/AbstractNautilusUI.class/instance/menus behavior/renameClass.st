renameClass

	self okToChange ifFalse: [ ^ self ].
	 self selectedClass ifNil: [ ^ self ].

	self basicRenameClass: self selectedClass theNonMetaClass.

	self changed: #sourceCodeFrom:.