constructPackagesSet
	| list result |
	list := (self environment difference: self packagesSelection).
	result := OrderedCollection new.
	'Building Packages'
	 	displayProgressFrom: 0 to: list size
		during:[ :bar | 
			list doWithIndex: [:each :i | 
				bar current: i.
				result add: each category]].
			
	^result asSet asSortedCollection: [:a :b | a<b]