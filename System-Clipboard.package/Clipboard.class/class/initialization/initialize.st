initialize
	"Clipboard initialize"

	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.
	self startUp: true.