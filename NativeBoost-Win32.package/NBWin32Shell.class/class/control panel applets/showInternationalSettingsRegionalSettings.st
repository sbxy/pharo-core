showInternationalSettingsRegionalSettings
	"Show the regional and language settings. 
	
		self showInternationalSettingsRegionalSettings
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,0'