differatorSettingsOn: aBuilder 
	<systemsettings>
	(aBuilder group: #differator) 
		label: 'Differator' translated;
		parent: #codeBrowsing; 
		description: 'All settings concerned with the differator' translated;
		with: [	
			(aBuilder setting: #ignoreLineEndings) 
				label: 'Ignore line endings' translated;
				target: TextDiffBuilder;
		 		description: 'When selected, line ending differences will be ignored ' translated.
				
		"Don't quite know how to build these... Should be able to choose emphasis and highlight-color"
			"(aBuilder setting: #insertedTextAttributes) 
				label: 'Inserted text' translated;
				target: TextDiffBuilder;
		 		description: 'Select how inserted text will be displayed' translated.
			(aBuilder setting: #removedTextAttributes) 
				label: 'Removed text' translated;
				target: TextDiffBuilder;
		 		description: 'Select how removed text will be displayed' translated."
		]
