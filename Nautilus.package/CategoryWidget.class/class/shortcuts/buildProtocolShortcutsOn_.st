buildProtocolShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #fullBrowse)
		category: #NautilusProtocolShortcuts
		default: $b command
		do: [ :target | target fullBrowse ]
		description: 'Open a new browser on the selection'.
		
	(aBuilder shortcut: #restrictedBrowseClass)
		category: #NautilusProtocolShortcuts
		default: $b command shift
		do: [ :target | target restrictedBrowseClass ]
		description: 'Open a restricted browser'.

	(aBuilder shortcut: #addProtocolsInGroup)
		category: #NautilusProtocolShortcuts
		default: $e command
		do: [ :target | target addProtocolsInGroup ]
		description: 'Add the selected protocols in a group'.
		
	(aBuilder shortcut: #findMethod)
		category: #NautilusProtocolShortcuts
		default: $f command
		do: [ :target | target findMethod ]
		description: 'Find a method'.
	
	(aBuilder shortcut: #addCategory)
		category: #NautilusProtocolShortcuts
		default: $n command
		do: [ :target | target addCategory ]
		description: 'Add a new protocol'.
	
	(aBuilder shortcut: #renameCategory)
		category: #NautilusProtocolShortcuts
		default: $r command
		do: [ :target | target enableCategorySingleSelection ifTrue: [target renameCategory ]]
		description: 'Rename the selected protocol'.
	
	(aBuilder shortcut: #removeCategories)
		category: #NautilusProtocolShortcuts
		default: $x command
		do: [ :target | target removeCategories ]
		description: 'Remove the selected protocols'.