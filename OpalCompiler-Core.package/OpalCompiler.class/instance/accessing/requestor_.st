requestor: aRequestor
	self compilationContext requestor: aRequestor.
	self compilationContext interactive: (UIManager default interactiveParserFor: self compilationContext requestor).