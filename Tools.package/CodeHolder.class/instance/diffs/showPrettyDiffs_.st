showPrettyDiffs: aBoolean
	"Set whether I'm showing pretty diffs as indicated"

	self showingPrettyDiffs
		ifFalse:
			[aBoolean ifTrue:
				[self contentsSymbol: #prettyDiffs]]
		ifTrue:
			[aBoolean ifFalse:
				[self contentsSymbol: #source]].
	self setContentsToForceRefetch.
	self contentsChanged