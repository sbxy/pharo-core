file paths
platformAbsoluteDirectories
	OSPlatform isWin32
		ifTrue: [ ^ self winFontDirectories ].
	OSPlatform isUnix
		ifTrue: [ ^ self unixFontDirectories ].
	OSPlatform isMacOSX
		ifTrue: [ ^ self macOSXFolderDirectories ].
	^ {}