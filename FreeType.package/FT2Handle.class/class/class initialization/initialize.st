initialize
	"FT2Handle initialize"

	Smalltalk removeFromShutDownList: self.
	Smalltalk removeFromStartUpList: self. "in case it was added by earlier version"
	Smalltalk addToStartUpList: self.
