categories
	"Answer an Array of categories (names)."
	categoryArray ifNil: [^ nil].
	(categoryArray size = 1 
		and: [categoryArray first = Default & (elementArray size = 0)])
		ifTrue: [^Array with: NullCategory].
	^categoryArray