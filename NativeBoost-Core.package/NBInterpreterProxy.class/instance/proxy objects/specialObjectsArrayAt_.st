specialObjectsArrayAt: index
	"generate the code to load the value at the given index into EAX"
	self specialObjectsArray.
	self stObject: asm EAX at: index.