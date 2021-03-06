buildRenameShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #renameClass)
		category: #NautilusGlobalShortcuts
		default: $r command  ,$c command 
		do: [ :target | target renameClass ]
		description: 'Rename the selected class'.
			
	(aBuilder shortcut: #renamePackage)
		category: #NautilusGlobalShortcuts
		default: $r command  , $p command 
		do: [ :target | target renamePackage ]
		description: 'Rename the selected package'.

	(aBuilder shortcut: #renameProtocol)
		category: #NautilusGlobalShortcuts
		default: $r command , $t command 
		do: [ :target | target renameCategory ]
		description: 'Rename the selected protocol'.
		
	(aBuilder shortcut: #renameGroup)
		category: #NautilusGlobalShortcuts
		default: $r command , $g command 
		do: [ :target | target renameGroup ]
		description: 'Rename the selected group'.