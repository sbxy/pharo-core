correspondingMcPackage
	"Answers the corresponding MCPackage. 
	 Normally it should exist, but in certain patterns could happen that the monticello package is not there. "
	self flag: #todo. "Rename this method as #mcPackage"
	
	^ MCWorkingCopy allManagers 
		detect: [  :each | each package name = name ]
		ifFound: [ :workingCopy | workingCopy package  ]
		ifNone: [ nil ].
	