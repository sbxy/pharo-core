isLowByte
	"return true for 8bit low-byte register (AL - DL)"

	"Note that this does *not* answer true for all byte registers -- send #is8 for that."

	^ self code <= 3