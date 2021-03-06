saveLatestScriptLoaderToWaitingFolder
	"self new saveLatestScriptLoaderToWaitingFolder"

	| man r |
	man := self allManagers.
	r := man select: [:each | 'ScriptLoader', self currentMajorVersionNumberWithoutDot, '*' match: each  package name].
	self
		saveInToReloadCachePackage: r first
		with: self commentForCurrentUpdate