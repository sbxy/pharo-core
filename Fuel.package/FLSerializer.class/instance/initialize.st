initialize-release
initialize

	super initialize.
	self signature: self class defaultSignature.
	self version: self class currentVersion.