initialize
	"Initialize a blank ChangeList.  Set the contentsSymbol to reflect whether diffs will initally be shown or not"

	contentsSymbol := CodeHolder diffsInChangeList
							ifTrue: [self defaultDiffsSymbol]
							ifFalse: [#source].
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	listIndex := 0.
	super initialize