getUserProfile
	"Return the users profile location. Typically this is C:\Documents and Settings\{username}
	
		self getUserProfile
	"
	
	^self getEnvironmentVariable: 'USERPROFILE'