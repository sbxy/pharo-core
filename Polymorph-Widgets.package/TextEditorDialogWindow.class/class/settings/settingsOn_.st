settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #DialogWindow)
		target: self;
		label: 'Dialog Window' translated;
		description: 'Settings related to the dialog windows' translated;
		with: [
			(aBuilder setting: #autoAccept)
				label: 'Accept the text when saved ?' translated;
				description: 'If true, the text will be accepted when you do Cmd+s' translated ]