setCanRunStartupScript
	canRunStartupScript
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can run script from the OS ?'