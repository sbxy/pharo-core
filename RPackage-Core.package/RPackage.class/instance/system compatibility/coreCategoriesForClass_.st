coreCategoriesForClass: aClass

	self flag: #stef. "only used by goferCleanUp"
	^ aClass organization realCategories reject: [ :cat | self isForeignClassExtension: cat ]