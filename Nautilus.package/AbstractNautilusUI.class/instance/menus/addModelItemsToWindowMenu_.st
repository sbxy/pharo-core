addModelItemsToWindowMenu: aMenu
	"Add model-related items to the window menu"

	aMenu addLine;
		add: 'Nautilus Plugins Manager'
		target: NautilusPluginManager new
		action: #openInWorld.
		
	aMenu
		add: 'Shortcuts description'
		target: self
		action: #openShortcutDescription.