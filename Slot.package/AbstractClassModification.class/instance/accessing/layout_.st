layout: aLayout
	layout := aLayout.
	layout host: target.
	layout finalize.
	layout = target layout 
		ifFalse: [ self computeChange ]