showServerProperties
	"
	self showServerProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL srvmgr.cpl' 