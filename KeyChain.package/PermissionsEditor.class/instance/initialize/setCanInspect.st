setCanInspect
	canInspect
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can inspect object ?'