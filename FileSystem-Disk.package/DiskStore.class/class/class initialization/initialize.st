initialize
	self useFilePlugin.
	Smalltalk 
		removeFromStartUpList: self;
		removeFromShutDownList: self;
		addToStartUpList: self after: OSPlatform;
		addToShutDownList: self