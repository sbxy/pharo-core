getCommandLineProcessor
	"Return command line processor executable
	
		self getCommandLineProcessor
	"
	
	^self getEnvironmentVariable: 'ComSpec'