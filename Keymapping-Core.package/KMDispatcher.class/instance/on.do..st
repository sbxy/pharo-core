building
on: aShortcut do: anAction
	self directKeymaps 
		addKeymapEntry: (KMKeymap
			shortcut: aShortcut 
			action: anAction)