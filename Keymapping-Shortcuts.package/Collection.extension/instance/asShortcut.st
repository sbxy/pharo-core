*keymapping-shortcuts
asShortcut
	| shortcut |
	self size = 1 ifTrue: [ ^self first asShortcut ].

	shortcut := KMChainedShortcut new.
	self do: [ :each | shortcut addShortcut: each asShortcut ].
	^shortcut.