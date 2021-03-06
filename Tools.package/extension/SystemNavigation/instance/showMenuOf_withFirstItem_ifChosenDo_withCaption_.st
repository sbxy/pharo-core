showMenuOf: selectorCollection withFirstItem: firstItem ifChosenDo: choiceBlock withCaption: aCaption
	"Show a sorted menu of the given selectors, preceded by firstItem, and all abbreviated to 40 characters.  Use aCaption as the menu title, if it is not nil.  Evaluate choiceBlock if a message is chosen."
 
	| index menuLabels sortedList |
	sortedList := selectorCollection asSortedCollection.
	menuLabels := Array streamContents: 
		[:strm | strm nextPut: (firstItem contractTo: 40).
			sortedList do: [:sel | strm nextPut: (sel contractTo: 40)]].
	index := UIManager default chooseFrom: menuLabels lines: #(1).	
	index = 1 ifTrue: [choiceBlock value: firstItem].
	index > 1 ifTrue: [choiceBlock value: (sortedList at: index - 1)]