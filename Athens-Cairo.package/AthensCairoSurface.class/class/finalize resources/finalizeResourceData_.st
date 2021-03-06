finalizeResourceData: data
	| handle id contextHandle |
	handle := data first.
	id := data second.
	contextHandle := data third.
	
	(self findSurface: id) = handle ifFalse: [ 
		self error: 'surface is not registered with surface plugin'.
		].
	
	self unregisterSurfaceWithId: id.
	self destroyContextHandle: contextHandle. 
	self destroySurfaceHandle: handle.
