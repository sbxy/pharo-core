showODBCSettings
	"
	self showODBCSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL odbccp32.cpl' 