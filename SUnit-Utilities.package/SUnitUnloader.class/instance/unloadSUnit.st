unloading
unloadSUnit
	Smalltalk globals
		at: #TestCase
		ifPresent: [ :class | SystemChangeNotifier uniqueInstance noMoreNotificationsFor: class ].
	#('SUnit-Tests' 'SUnit-UI' 'SUnit-Core' 'SUnit-Help' 'SUnit-Utilities' ) do: [ :each | (MCPackage named: each) unload ].
	AppRegistry removeObsolete.	