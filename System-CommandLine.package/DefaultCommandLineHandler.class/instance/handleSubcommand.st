activation
handleSubcommand
	"check if there is an active subcommand"
	
	| handlers |
	
	handlers := self selectHandlers.
	
	"ignore the default command line handler"
	handlers first = DefaultCommandLineHandler
		ifTrue: [ ^ self ].
		
	^ handlers first activateWith: commandLine.