showInternationalSettingsTime
	"Show the internation settings for input locales.
	
		self showInternationalSettingsTime
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,3'