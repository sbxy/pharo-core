mc synchronization tofix
updateAfterNewMCPackageRegistred: anAnnouncement
	"User create a new package, MCWorkingCopy propagates changes. We react accordingly."
	| newPackage name |
	
	name := anAnnouncement package name.
"super update: anArray."
			"we first look if a RPackage has not yet been registered (by creating a category in the system).
			 In this case we don't want to register a new RPackage, but refer to this existing category"
			(self packageExactlyMatchingExtensionName: name) isNil
				ifTrue: [
					"if no package already exist, we add a new one"
					newPackage := self ensureExistAndRegisterPackageNamed:  name.
					"a rpackage is matching exactly a sytem category. So all classes should be registered to their parent category. 
					We should not import categories" ]		
			"Probably can get a bug since we can have a package named AST and the category named AST-Core so should probably 
	pass the category as parameter"