asUnsignedLong
	"slow version"
	^ (self at: 1)
	+ ((self at: 2) << 8)
	+ ((self at: 3) <<16)
	+ ((self at: 4) << 24)