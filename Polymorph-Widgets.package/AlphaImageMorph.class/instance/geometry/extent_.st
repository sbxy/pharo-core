extent: aPoint
	"Allow as normal."
	
	self perform: #extent: withArguments: {aPoint} inSuperclass: Morph.
	(self layout = #scaled or: [self layout = #scaledAspect]) ifTrue: [self cachedForm: nil]
