nautilusSettingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #Nautilus)
		target: self;
		label: 'Nautilus' translated;
		description: 'Settings related to the browser' translated;
		with: [
			(aBuilder setting: #openOnGroups)
				label: 'Open the browser on groups ?' translated;
				description: 'If true, Nautilus will show groups when opened' translated.
			(aBuilder pickOne: #commentPosition)
				label: 'Position of the comment pane:' translated;
				target: self;
				default: self defaultCommentPosition;
				order: 1;
				domainValues: self commentPositions.
			(aBuilder setting: #showHierarchy)
				label: 'Show hierarchy by default ?' translated;
				description: 'If false, Nautilus will show a flat list of classes' translated.
			(aBuilder setting: #historyMaxSize)
				label: 'Set the max size of the navigation history' translated;
				description: ('By default, the value is ', self defaultMaxSize printString) translated.
			(aBuilder setting: #switchClassesAndPackages)
				label: 'Switch lists when opening on a class ?' translated;
				description: 'Default value: false' translated.
			(aBuilder setting: #warningLimit)
				label: 'Set the warning limit of source code pane' translated;
				description: 'By default, the value is 350
Put a negative value to disable' translated.
			(aBuilder setting: #emptyCommentWarning)
				label: 'Enable/disable warning for empty comments' translated;
				description: 'Enable/disable the warning for empty comments. CAUTION! To have comments in your classes is highly recomended' translated. 
			(aBuilder setting: #populateMethodList)
				label: 'Populate the method list at opening ?' translated;
				default: self defaultPopulateMethodList;
				description: 'If true, the browser may be a bit slower to open on big classes. If false, you will need an extra click to access a method' translated.
			(aBuilder setting: #useOldStyleKeys)
				label: 'Use old style keys ?' translated;
				description: 'If true, the browser will use the old style keys (This is highly non-recommended, you will lose a lot of cool access keys)' translated.
				
				
				]