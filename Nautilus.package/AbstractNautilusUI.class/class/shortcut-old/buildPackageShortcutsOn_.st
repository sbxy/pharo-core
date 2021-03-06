buildPackageShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #fullBrowse)
		category: #NautilusPackageShortcuts
		default: $b command
		do: [ :target | target fullBrowse ]
		description: 'Open a new browser on the selection'.
		
	(aBuilder shortcut: #addPackagesInGroup)
		category: #NautilusPackageShortcuts
		default: $e command
		do: [ :target | target addPackagesInGroup ]
		description: 'Add the selected package in a group'.
		
	(aBuilder shortcut: #findClass)
		category: #NautilusPackageShortcuts
		default: $f command
		do: [ :target | target findClass ]
		description: 'Find a class'.
		
	(aBuilder shortcut: #findPackage)
		category: #NautilusPackageShortcuts
		default: $f command shift
		do: [ :target | target findPackage ]
		description: 'Find a package'.

	(aBuilder shortcut: #addPackagesAsGroupsAndBrowse)
		category: #NautilusPackageShortcuts
		default: $g command
		do: [ :target | target addPackagesAsGroupsAndBrowse ]
		description: 'Add the selected packages as groups and browse'.
	
	(aBuilder shortcut: #addPackagesAsGroups)
		category: #NautilusPackageShortcuts
		default: $g command shift
		do: [ :target | target addPackageAsGroupAndBrowse ]
		description: 'Add the selected packages as groups'.
	
	(aBuilder shortcut: #addMatchingPackagesInGroupsAndBrowse)
		category: #NautilusPackageShortcuts
		default: $m command shift
		do: [ :target | target addMatchingPackagesInGroupsAndBrowse ]
		description: 'Add packages matching the selected package as groups and browse'.
	
	(aBuilder shortcut: #addMatchingPackagesInGroups)
		category: #NautilusPackageShortcuts
		default: $m command
		do: [ :target | target addMatchingPackagesInGroups ]
		description: 'Add packages matching the selected package as groups'.
		
	(aBuilder shortcut: #addPackage)
		category: #NautilusPackageShortcuts
		default: $n command 
		do: [ :target | target addPackage ]
		description: 'Add a new package'.
	
	(aBuilder shortcut: #renamePackage)
		category: #NautilusPackageShortcuts
		default: $r command 
		do: [ :target | target enableSingleMenuItems ifTrue: [ target renamePackage ]]
		description: 'Rename the selected package'.	
	
	(aBuilder shortcut: #runPackagesTests)
		category: #NautilusPackageShortcuts
		default: $t command 
		do: [ :target | target runPackagesTestsNotifying: true ]
		description: 'Run the tests for the selected packages'.
	
	(aBuilder shortcut: #removePackages)
		category: #NautilusPackageShortcuts
		default: $x command 
		do: [ :target | target removePackages ]
		description: 'Remove the selected packages'.