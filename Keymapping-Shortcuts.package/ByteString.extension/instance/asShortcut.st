*Keymapping-Shortcuts
asShortcut
	self size > 1 
		ifTrue: [ self error: 'Shortcuts only take a single letter'].
	^ KMSingleKeyShortcut from: self first