private registration
unregisterExtendingPackage: aPackage forClass: aClass
	
	| cur |
	cur := classExtendingPackagesMapping at: aClass theNonMetaClass name ifAbsent: [nil].
	cur isNil
		ifFalse: [cur remove: aPackage ifAbsent: [] "not happy with this one"]