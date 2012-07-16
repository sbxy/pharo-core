building
attachCategory: aCategoryName targetting: anObject
	
	| isAlreadyAttached |
	isAlreadyAttached := self targets anySatisfy: [ :e | 
			self flag: 'Maybe the following line should be reified as KMCategoryTarget>>=... Guille? - SeanDeNigris'.
			e category name = aCategoryName and: [ e target = anObject and: [ e morph = morph ] ] ].
	isAlreadyAttached ifFalse: [ | category categoryTarget |
			category := KMRepository default categoryForName: aCategoryName.
			categoryTarget := KMCategoryTarget target: anObject morph: morph category: category.
			self targets add: categoryTarget ].