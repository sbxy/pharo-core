unload
	MCPackageLoader unloadPackage: self package.
	package packageSet unregister.
	self unregister.