selectedPackage: anObject

	selectedPackage := anObject.
	self announcer announce: ( NautilusPackageSelected package: anObject )