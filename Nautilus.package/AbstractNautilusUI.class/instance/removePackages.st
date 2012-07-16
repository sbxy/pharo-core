menus behavior
removePackages

	| names |
	self selectedPackages 
		ifNotEmpty: [:packages |
			names := packages collect: [:package | package name ].
			names := names joinUsing: String cr.
			(UIManager default confirm: ('Are you sure you want to delete the package(s) named ', String cr, names, ' and their classes ?'))
				ifTrue: [| scroll |
					packages do: [:package |
						package definedClasses do:[: classToRemove |
									classToRemove subclasses size > 0
									ifTrue: [ | message |
										message := 'Are you certain that you
want to REMOVE the class ', classToRemove name, '
from the system?'.
										(self confirm: 'class has subclasses: ' , message)
										ifFalse: [^ false]].
									classToRemove removeFromSystem ].
						self browsedEnvironment packageOrganizer unregisterPackage: package ].
					scroll := list scrollValue y .
					self selectedPackage: nil.
					self updatePackageView.
					list vScrollValue: scroll ]]