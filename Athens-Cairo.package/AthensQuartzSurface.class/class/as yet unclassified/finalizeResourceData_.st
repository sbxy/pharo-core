finalizeResourceData: data
	| handle contextHandle |
	handle := data first.
	"	id := data second.  - id is not used "
	contextHandle := data third.
	
	self destroyContextHandle: contextHandle. 
	self destroySurfaceHandle: handle.
