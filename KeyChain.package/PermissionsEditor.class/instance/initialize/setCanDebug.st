setCanDebug
	canDebug
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can debug code ?'