messageListMenu: aMenu
	^aMenu addList: #(
		('FileIn'						fileInMessage)
		('FileOut'					fileOutMessage)
		-
		('Senders (n)'				browseSenders)
		('Implementors (m)'			browseImplementors)
		('Method inheritance (h)'	methodHierarchy)
		('Versions (v)'				browseVersions)
		-
		('Remove'					removeMessage))
