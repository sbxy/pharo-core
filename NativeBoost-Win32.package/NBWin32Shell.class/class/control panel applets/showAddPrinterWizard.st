showAddPrinterWizard
	"
	self showAddPrinterWizard
	"

	^self shellRunDLL: 'shell32.dll,SHHelpShortcuts_RunDLL AddPrinter' 