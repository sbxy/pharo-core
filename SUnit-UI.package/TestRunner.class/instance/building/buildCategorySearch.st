buildCategorySearch

	^ SearchMorph new
		model: self;
		updateSelector: #categorySearchUpdate:;
		yourself