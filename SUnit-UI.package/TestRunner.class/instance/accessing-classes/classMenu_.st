classMenu: aMenu
	^ aMenu
		title: 'Classes';
		add: 'Browse' action: #browseClass;
		addLine;
		add: 'Select all' action: #selectAllClasses;
		add: 'Select unit tests' action: #selectAllUnitTests;
		add: 'Select subclasses' action: #selectSubclasses;
		add: 'Select inversion' action: #selectInverseClasses;
		add: 'Select none' action: #selectNoClasses;
		add: 'Refresh' action: #updateClasses;
		addLine;
		add: 'Filter...' action: #filterClasses;
		addLine;
		add: 'Run selected' action: #runAll;
		yourself.