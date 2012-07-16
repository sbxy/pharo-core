shortcut-old
buildSourceCodeShortcutsOn: aBuilder
	<keymap>	

	self buildEditorKeymappingsOn: aBuilder.
	(aBuilder shortcut: #runTest)
		category: #NautilusSourceCodeShortcuts
		default: $j command, $m command
		do: [:target |
				((target selectedClass inheritsFrom: TestCase) and: [ (target selectedMethod selector beginsWith: 'test') and: [ target sourceTextArea hasUnacceptedEdits not ]])
					ifTrue: [ target runTestForAMethod: target selectedMethod notifying: true
				]]
		description: 'Run the current test method'.
		
	(aBuilder shortcut: #findClass)
		category: #NautilusSourceCodeShortcuts
		default: $f command, $c command 
		do: [:target | target findClass ]
		description: 'Find class'.