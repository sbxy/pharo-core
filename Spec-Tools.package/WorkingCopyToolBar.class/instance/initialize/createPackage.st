createPackage
	| name |
	
	name := UIManager default request: 'Name of package:' translated.
	name isEmptyOrNil ifFalse:
		[ PackageOrganizer default registerPackageNamed: name.
		MCWorkingCopy forPackage: (MCPackage new name: name).]