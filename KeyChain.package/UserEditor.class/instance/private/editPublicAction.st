editPublicAction

	user value 
		ifNil: [ self ]
		ifNotNil: [:usr || editor |
			editor := KeyChainViewer new
						keychain: usr unlockedKeychain;
						yourself.
			self window ifNotNil: [ self window openModal: editor openWithSpec window ]]