initElementType:  aTypeName
	"Initialize the element type and size.
	
	If you want to use a public subclass of me, then make sure you call this method
	in your class #initialize method.
	" 

	elementType := aTypeName.
	elementSize := (NBFFICallout new requestor: self; resolveType: elementType) typeSize .
	self installAccessors.