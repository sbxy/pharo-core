testSignalException
	[ self interpret: 'Exception signal' ]
		on: InterpretationError do: [ :error |
			self assert: (error cause isKindOf: SubclassResponsibility).
			^ self ].
	self fail.