buildMethodShortcutsOn: aBuilder
	<keymap>	

	(aBuilder shortcut: #fullBrowse)
		category: #NautilusMethodShortcuts
		default: $b command
		do: [ :target | target fullBrowse ]
		description: 'Open a new browser on the selection'.
		
	(aBuilder shortcut: #restrictedBrowseClass)
		category: #NautilusMethodShortcuts
		default: $b command shift
		do: [ :target | target restrictedBrowseClass ]
		description: 'Open a restricted browser'.
		
	(aBuilder shortcut: #categorizeMethod)
		category: #NautilusMethodShortcuts
		default: $c command shift
		do: [ :target | target categorizeMethod ]
		description: 'Recategorize the selected methods'.
	
	(aBuilder shortcut: #addMethodsInGroup)
		category: #NautilusMethodShortcuts
		default: $e command
		do: [ :target | target addMethodsInGroup ]
		description: 'Add the selected methods in a group'.
	
	(aBuilder shortcut: #findMethod)
		category: #NautilusMethodShortcuts
		default: $f command
		do: [ :target | target findMethod ]
		description: 'Find a method'.
	
	(aBuilder shortcut: #methodHierarchy)
		category: #NautilusMethodShortcuts
		default: $i command
		do: [ :target | target enableMethodSingleSelection ifTrue: [ target methodHierarchy ]]
		description: 'Spawn selected method hierarchy'.
		
	(aBuilder shortcut: #generateTestMethodsAndFocus)
		category: #NautilusMethodShortcuts
		default: $j command
		do: [ :target | target generateTestMethodsAndFocus: true ]
		description: 'Generate test methods for the selected methods and jump to them'.
		
	(aBuilder shortcut: #generateTestMethods)
		category: #NautilusMethodShortcuts
		default: $j command shift
		do: [ :target | target generateTestMethodsAndFocus: false ]
		description: 'Generate test methods for the selected methods'.
		
	(aBuilder shortcut: #browseMessages)
		category: #NautilusMethodShortcuts
		default: $m command
		do: [ :target | target enableMethodSingleSelection ifTrue: [ target browseMessages ]]
		description: 'Browse implementors'.
	
	(aBuilder shortcut: #browseSendersOfMessages)
		category: #NautilusMethodShortcuts
		default: $n command
		do: [ :target | target enableMethodSingleSelection ifTrue: [ target browseSendersOfMessages ]]
		description: 'Browse senders'.
	
	(aBuilder shortcut: #runTestFor)
		category: #NautilusMethodShortcuts
		default: $t command
		do: [ :target | target runTestForMethods: target selectedMethods notifying: true]
		description: 'Run the selected test methods'.
		
	(aBuilder shortcut: #browseVersions)
		category: #NautilusMethodShortcuts
		default: $v command
		do: [ :target | target enableMethodSingleSelection ifTrue: [ target browseVersions ]]
		description: 'Browse version'.		
	
	(aBuilder shortcut: #removeMethods)
		category: #NautilusMethodShortcuts
		default: $x command
		do: [ :target | target removeMethods ]
		description: 'Remove the selected methods'.