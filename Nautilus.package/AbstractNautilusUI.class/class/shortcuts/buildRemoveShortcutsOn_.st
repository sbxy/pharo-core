buildRemoveShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #removeClass)
		category: #NautilusGlobalShortcuts
		default: $x command  ,$c command 
		do: [ :target | target removeClasses ]
		description: 'Remove the selected classes'.
			
	(aBuilder shortcut: #removePackage)
		category: #NautilusGlobalShortcuts
		default: $x command  , $p command 
		do: [ :target | target removePackages ]
		description: 'Remove the selected packages'.

	(aBuilder shortcut: #removeProtocol)
		category: #NautilusGlobalShortcuts
		default: $x command , $t command 
		do: [ :target | target removeCategories ]
		description: 'Remove the selected protocols'.
		
	(aBuilder shortcut: #removeMethod)
		category: #NautilusGlobalShortcuts
		default: $x command , $m command 
		do: [ :target | target removeMethods ]
		description: 'Remove the selected methods'.
		
	(aBuilder shortcut: #removeGroups)
		category: #NautilusGlobalShortcuts
		default: $x command , $g command 
		do: [ :target | target removeGroups ]
		description: 'Remove the selected groups'.