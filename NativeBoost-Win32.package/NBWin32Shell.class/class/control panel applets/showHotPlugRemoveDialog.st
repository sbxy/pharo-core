showHotPlugRemoveDialog
	"
	self showHotPlugRemoveDialog
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL HotPlug.dll'