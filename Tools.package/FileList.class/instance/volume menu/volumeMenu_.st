volumeMenu: aMenu
	aMenu addList: {
			{'Recent...' translated.		#recentDirs}.
			#-.
			{'Delete directory...' translated.	#deleteDirectory}.
			#-}.
	aMenu
		addServices: (self itemsForDirectory: self directory)
		for: self
		extraLines: #().
	^aMenu.