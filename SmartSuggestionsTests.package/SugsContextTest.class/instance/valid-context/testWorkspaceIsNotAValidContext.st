testWorkspaceIsNotAValidContext
	| st |
	
	st := Workspace new.
	self should: [SugsAbstractContext contextFor: st] raise: Error description:  'Not defined context for ', st asString