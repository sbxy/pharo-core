exampleWindowWithToolbars
	"Open an example window with toolbars."
	"self new exampleWindowWithToolbars"

	|win fileMenu tools dock text holder|
	win := StandardWindow new.
	fileMenu := win newMenu.
	fileMenu
		addToggle: 'Open' translated
		target: nil "would be model"
		selector: #openFile.
	fileMenu lastItem
		font: win theme menuFont;
		icon: Smalltalk ui icons smallOpenIcon;
		keyText: 'Ctrl+O'.
	fileMenu
		addToggle: 'Save' translated
		target: nil
		selector: #saveFile
		getStateSelector: nil
		enablementSelector: nil.
	fileMenu lastItem
		font: win theme menuFont;
		icon: Smalltalk ui icons smallSaveIcon;
		keyText: 'Ctrl+S'.
	fileMenu
		addToggle: 'Print...' translated
		target: nil
		selector: #print.
	fileMenu lastItem
		font: win theme menuFont;
		icon: Smalltalk ui icons smallPrintIcon;
		keyText: 'Ctrl+P'.
	tools := win newToolbar: {win
			newButtonFor: nil "if we had a model it would go here"
			getState: nil
			action: #openFile
			arguments: nil
			getEnabled: nil
			labelForm: Smalltalk ui icons smallOpenIcon
			help: 'Open file' translated.
		win
			newButtonFor: nil
			getState: nil
			action: #saveFile
			arguments: nil
			getEnabled: nil
			labelForm: Smalltalk ui icons smallSaveIcon
			help: 'Save file' translated.
		win
			newButtonFor: nil
			getState: nil
			action: #print
			arguments: nil
			getEnabled: nil
			labelForm: Smalltalk ui icons smallPrintIcon
			help: 'Print' translated}.
		holder := StringHolder new.
		text := win
			newTextEditorFor: holder
			getText:  #contents
			setText: #contents:
			getEnabled: nil.
		dock := win newToolDockingBar.
		dock
			add: 'File' translated
			font: win theme menuBarFont
			icon: Smalltalk ui icons smallOpenIcon
			help: 'File operations' translated
			subMenu: fileMenu;
			addMorphBack: tools.
		win
			addMorph: dock
			fullFrame: ((0@0 corner: 1@0) asLayoutFrame bottomOffset: dock minExtent y);
			addMorph: text
			fullFrame: ((0@0 corner: 1@1) asLayoutFrame topOffset: dock minExtent y).
		win
			themeChanged;
			openInWorld