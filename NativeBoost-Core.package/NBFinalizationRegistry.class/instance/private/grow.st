grow
	"double the items array size"
	| oldSz |
	oldSz := items size.
	items := items grownBy: oldSz.
	
	self formatItems: oldSz+1
	