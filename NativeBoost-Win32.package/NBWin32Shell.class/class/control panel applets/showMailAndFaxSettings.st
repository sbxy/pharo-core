showMailAndFaxSettings
	"
	self showMailAndFaxSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mlcfg32.cpl'