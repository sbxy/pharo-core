icon
packageIconFor: aPackage
	| mcpackage |
	
	PackagesIconsCache
		at: aPackage
		ifPresent: [:icon |
			 icon class == IconicButtonStateHolder ifFalse: [ ^ icon ].
			^ icon asIconTargetting: self ].

	aPackage classes isEmpty ifTrue: [^ PackagesIconsCache at: aPackage put: (self iconClass iconNamed: #emptyPackageIcon) ].
	
	mcpackage := (NautilusMCBindings default mcPackageFor: aPackage).
	(mcpackage notNil and: [ mcpackage isDirty ])
		ifTrue: [ | icon |
			icon := IconicButton new 
						target: self;
						actionSelector: #saveDirtyPackages:;
						arguments: {{ aPackage }};
						labelGraphic: (aPackage definedClasses
											ifEmpty: [ (self iconClass iconNamed: #dirtyMonticelloPackageIcon) ]
											ifNotEmpty: [ (self iconClass iconNamed: #dirtyPackageIcon) ]);
						color: Color transparent;
						extent: 15 @ 16;
						helpText: 'Save the package';
						borderWidth: 0.
			 PackagesIconsCache at: aPackage put: (IconicButtonStateHolder forNautilus: icon).
			^ icon ].

	(mcpackage notNil and: [(mcpackage name = aPackage name ) and: [ aPackage definedClasses isEmpty]])
		ifTrue: [ ^ PackagesIconsCache at: aPackage put: (self iconClass iconNamed: #monticelloPackage) ].

	^ PackagesIconsCache at: aPackage put: (self iconClass iconNamed: #packageIcon)