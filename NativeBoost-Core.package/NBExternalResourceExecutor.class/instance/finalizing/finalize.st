finalize 
	(NativeBoost sessionChanged: session) ifFalse: [
		resourceClass finalizeResourceData: data
	]