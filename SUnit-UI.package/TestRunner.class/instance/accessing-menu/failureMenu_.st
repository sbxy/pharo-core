failureMenu: aMenu
	"Add the browse item only if an item is selected"
	
	failedSelected ifNotNil: [aMenu add: 'Browse test' action: #browseSelectedFailedTest].
	^ aMenu