shortcuts
buildAddGroupsShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #newGroupAndBrowseForPackage)
		category: #NautilusGlobalShortcuts
		default: $n command  ,$g command 
		do: [ :target | target addPackagesAsGroupsAndBrowse ]
		description: 'Create a new group and browse'.
			
	(aBuilder shortcut: #newGroupForPackage)
		category: #NautilusGlobalShortcuts
		default: $n command  , $g shift command 
		do: [ :target | target addPackagesAsGroups ]
		description: 'Create a new group'.

	(aBuilder shortcut: #addInGroupPackage)
		category: #NautilusGlobalShortcuts
		default: $n command , $e command, $p command 
		do: [ :target | target addPackagesInGroup ]
		description: 'Add the selected packages in a group'.
		
	(aBuilder shortcut: #addInGroupMethod)
		category: #NautilusGlobalShortcuts
		default: $n command , $e command, $m command 
		do: [ :target | target addMethodsInGroup ]
		description: 'Add the selected methods in a group'.
		
	(aBuilder shortcut: #addInGroupClass)
		category: #NautilusGlobalShortcuts
		default: $n command , $e command, $c command 
		do: [ :target | target addClassesInGroup ]
		description: 'Add the selected classes in a group'.	
		
	(aBuilder shortcut: #addMatchingAndBrowse)
		category: #NautilusGlobalShortcuts
		default: $n command , $m command 
		do: [ :target | target addMatchingPackagesInGroupsAndBrowse ]
		description: 'Add packages matching the selected package as groups and browse'.
		
	(aBuilder shortcut: #addInGroupMethod)
		category: #NautilusGlobalShortcuts
		default: $n command , $m command shift
		do: [ :target | target addMatchingPackagesInGroups ]
		description: 'Add packages matching the selected package as groups'.