ensureFrame: aFrame 
	| frame |
	
	frame := aFrame.	
"??? forgot to use result ??? frame intersect: (self bounds bottom: (self bounds bottom +self headerHeight)). " 
	frame := self bounds: frame in: self listSource.
	frame := self
		bounds: ((frame left: self listSource innerBounds left) right: self listSource innerBounds right)
		from: self listSource. 
	^ frame