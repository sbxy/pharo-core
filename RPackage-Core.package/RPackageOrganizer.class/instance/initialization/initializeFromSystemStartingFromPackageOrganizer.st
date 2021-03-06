initializeFromSystemStartingFromPackageOrganizer
	"this method will do the same job than initializeFromSystem except that it will start from all packages in the package organizer, instead of the ones of Monticello. Even when starting from the workingCopies of monticello, we ask to the corresponding package info to retrrieve information. Moreover, monticello does not refer all packages in packageOrganizer (surely because of some sub-categories not yet taken into account)"
	| allInfos package |

	UIManager default 
		informUser: 'Calculating packages to import' 
		during: [ allInfos := PackageOrganizer default packages reject: #isEmpty ]. 
	allInfos 
		do: [ :info |			
			package := self ensureExistAndRegisterPackageNamed: info packageName.
			
			"PackageOrganizer contains a quite special packageInfo used by monticello test. It is subclass 
			  of MCDirtyPackageInfo. Its instance variable is initialized as #'Monticello-Mocks' but 
			  MCDirtyPackageInfo>> packageName return another name. The tests expect to 
			  have #'Monticello-Mocks' as name: "
			info methodCategoryPrefix = '*mcdirtypackage' 
				ifTrue: [ self ensureExistAndRegisterPackageNamed: #'Monticello-Mocks' ].
			self importFromPackageInfoPass1: info package: package ]
		displayingProgress: 'Importing from PackageOrganizer. Pass 1'.

	allInfos 
		do: [ :info |			
			package := self ensureExistAndRegisterPackageNamed:  info packageName.
			self importFromPackageInfoPass2: info package: package ]
		displayingProgress: 'Importing from PackageOrganizer. Pass 2'

