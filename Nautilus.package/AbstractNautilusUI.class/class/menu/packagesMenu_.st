packagesMenu: aBuilder
	<contextMenu>
	<nautilusGlobalPackageMenu>
	| package target |
	target := aBuilder model.

	(package := target selectedPackage) ifNil: [ ^ target ].
	
	(aBuilder item: #'Browse scoped')
		keyText: 'b, s' if: Nautilus useOldStyleKeys not;
		action: [ target restrictedBrowsePackage ];
		order: 1000;
		help: 'Open a browser on a restricted view';
		withSeparatorAfter.
						
	(aBuilder item: #'Rename...')
		keyText: 'r, p' if: Nautilus useOldStyleKeys not;
		keyText: 'r' if: Nautilus useOldStyleKeys;
		action: [target renamePackage];
		order: 1100;
		help: 'Rename a package';
		enabledBlock: [ target selectedPackages size < 2 ].
		
	(aBuilder item: #'Remove...')
		keyText: 'x, p' if: Nautilus useOldStyleKeys not;
		keyText: 'x' if: Nautilus useOldStyleKeys;
		action: [target removePackages ];
		order: 1200;
		help: 'Remove a package';
		icon: (Smalltalk ui icons iconNamed: #removeIcon).
		
	(aBuilder item: #'Run tests...')
		keyText: 'j, p' if: Nautilus useOldStyleKeys not;
		keyText: 't' if: Nautilus useOldStyleKeys;
		action: [target runPackagesTestsNotifying: true ];
		enabled: (package classes anySatisfy: [:e | e inheritsFrom: TestCase ]);
		order: 1250;
		help: 'Run tests';
		withSeparatorAfter.
	
	(aBuilder item: #'Promote as package')
		action: [ target promoteSelectedPackageTagAsPackage ];
		enabled: package isPackageTag;
		order: 1260;
		help: 'Promote this package tag as one package'.
		
	(aBuilder item: #'Demote to package with tag')
		action: [ target demoteSelectedPackageAsPackageWithTag  ];
		enabled: (package isPackageTag not and: [ package name includes: $- ]);
		order: 1261;
		help: 'Downgrade this package as one package with a tag';
		withSeparatorAfter.
		
		
	(aBuilder item: #'File Out')
		action: [target fileOutPackage];
		order: 1300;
		help: 'File out a package';
		withSeparatorAfter.
	
	target selectedPackages size > 1
		ifTrue: [
			(aBuilder item: #'Add as Groups & Browse')
				keyText: 'n, g' if: Nautilus useOldStyleKeys not;
				action: [ target addPackagesAsGroupsAndBrowse ];
				order: 1400;
				help: 'Create a group based on the current package and browse it'.

			(aBuilder item: #'Add as Groups')
				keyText: 'n, G' if: Nautilus useOldStyleKeys not;
				action: [ target addPackagesAsGroups ];
				order: 1600;
				help: 'Create a group based on the current package'.

			(aBuilder item: #'Add as Group')
				action: [target addPackageAsGroup];
				order: 1700;
				help: 'Create a group based on the current package'.	
					]
		ifFalse: [
			(aBuilder item: #'Add as Group & Browse')
				keyText: 'n, g' if: Nautilus useOldStyleKeys not;
				keyText: 'G' if: Nautilus useOldStyleKeys;
				action: [ target addPackageAsGroupAndBrowse ];
				order: 1500;
				help: 'Create a group based on the current package and browse it'.
				
			(aBuilder item: #'Add as Group')
				keyText: 'n, G' if: Nautilus useOldStyleKeys not;
				action: [target addPackageAsGroup];
				order: 1700;
				help: 'Create a group based on the current package' ].			
				
	(aBuilder item: #'Add Matching Packages as Groups and Browse')
		keyText: 'n, m' if: Nautilus useOldStyleKeys not;
		keyText: 'M' if: Nautilus useOldStyleKeys;
		action: [ target addMatchingPackagesInGroupsAndBrowse ];
		order: 1800.
	
	(aBuilder item: #'Add in Group...')
		keyText: 'n, e, p' if: Nautilus useOldStyleKeys not;
		action: [target addPackagesInGroup];
		order: 1900;
		help: 'Add current package in a group';
		withSeparatorAfter.