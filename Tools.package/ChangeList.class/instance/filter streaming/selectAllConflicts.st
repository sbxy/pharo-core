selectAllConflicts
	"Selects all method definitions in the receiver which are also in any existing change set in the system.  This makes no statement about whether the content of the methods differ, only whether there is a change represented."

	Cursor read showWhile: 
		[ | aChange aClass |
		1 to: changeList size do:
			[:i | aChange := changeList at: i.
			listSelections at: i put:
				(aChange type = #method
				and: [(aClass := aChange methodClass) notNil
				and: [ChangeSet doesAnyChangeSetHaveClass: aClass andSelector:  aChange methodSelector]])]].
	self changed: #allSelections