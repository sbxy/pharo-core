asmShould: aBlock raise: anError

	self should: [self bytes: aBlock] raise: anError.