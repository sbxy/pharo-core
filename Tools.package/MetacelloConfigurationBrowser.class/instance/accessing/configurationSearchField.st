configurationSearchField
	
	^ SearchMorph new
		model: self;
		setIndexSelector: #configurationSearchAccept:; 
		updateSelector: #configurationSearchAccept:;
		searchList: self class configurationSearchList;
		asSpecAdapter