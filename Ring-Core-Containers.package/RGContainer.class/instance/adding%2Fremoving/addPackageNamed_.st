addPackageNamed: packageName
	"adds a child package with the given name"
	| cPackage |

	(self includesPackageNamed: packageName) ifTrue:[ ^self ].
	cPackage:= self factory createPackageNamed: packageName.
	self addPackage: cPackage