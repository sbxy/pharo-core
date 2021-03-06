doWithProgressBar: aBlock forUnsentMessagesInClass: class
	| progressMessages selectors |
	progressMessages := 'Unsent messages in class ', class name.
	selectors := class selectors asArray.
	progressMessages
		displayProgressFrom: 0 to: selectors size
		during: [:bar | 
			selectors with: (0 to: selectors size - 1) do: [:selector :index|
				bar current: index.
				(self isUnsentMessage: selector) ifTrue: [aBlock value: class value: selector] ]]
