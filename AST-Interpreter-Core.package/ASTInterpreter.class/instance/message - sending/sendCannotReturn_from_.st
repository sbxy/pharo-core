sendCannotReturn: result from: returnContext
	| cannotReturn |
	gotoContext := false.
	self popContext.
	cannotReturn := Message selector: #cannotReturn: argument: result.
	^ self send: cannotReturn to: returnContext