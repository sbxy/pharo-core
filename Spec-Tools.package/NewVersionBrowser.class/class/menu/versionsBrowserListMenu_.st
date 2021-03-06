versionsBrowserListMenu: aBuilder
	<contextMenu>
	<newVersionBrowserListMenu>
	| tool browser model |
	model := aBuilder model.
	browser := aBuilder model browser.
	tool := browser model.
	browser selectedMessage notNil
		ifTrue: [ 
			| message |
			message := browser selectedMessage compiledMethod.
			(aBuilder item: #'Compare to current')
				help: 'Compare selected version to the current version';
				target: model;
				selector: #compareToCurrentVersion.
			(aBuilder item: #'Compare to version...')
				help: 'Compare selected version to another selected version';
				target: model;
				selector: #compareToOtherVersion.
			(aBuilder item: #'Revert to selected version')
				help: 'Resubmit the selected version, so that it becomes the current version';
				action: [ model revert: message ]].
	(aBuilder item: #Senders)
		keyText: 'n';
		help: 'Browse all senders of this selector';
		action: [ model browseSenders ].
	(aBuilder item: #Implementors)
		keyText: 'm';
		help: 'Browse all implementors of this selector';
		action: [ model browseImplementors ];
		withSeparatorAfter 