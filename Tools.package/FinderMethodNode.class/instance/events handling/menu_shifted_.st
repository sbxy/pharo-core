menu: menu shifted: aBoolean
	
	menu
		add: 'Implementors (m)' translated
		target: self
		selector: #browseImplementors.
		
	menu
		add: 'Senders (n)' translated
		target: self
		selector: #browseSenders.
		
	^ super menu: menu shifted: aBoolean.