testMissingYourself
	self 
		ruleFor: self currentSelector
		plusSelectors: #(#inlineMethod )