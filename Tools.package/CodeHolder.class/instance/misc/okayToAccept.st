okayToAccept
	"Answer whether it is okay to accept the receiver's input"

	self showingAnyKindOfDiffs ifFalse:
		[^ true]. 
	^ self confirm: 
'Caution!
You are "showing diffs" here, so 
there is a danger that some of the text in the
code pane is contaminated by the "diff" display' translated
