buildCommentShortcutsOn: aBuilder
	<keymap>	

	self buildEditorCommentKeymappingsOldOn: aBuilder.
	
	(aBuilder shortcut: #runTest)
		category: #NautilusCommentShortcuts
		default: $t command
		do: [:target |
				(target selectedMethod isTestMethod and: [ target commentTextArea hasUnacceptedEdits not ])
					ifTrue: [ target runTestForAMethod: target selectedMethod notifying: true
				]]
		description: 'Run the current test method'.