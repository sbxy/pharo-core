testPackages

	^(TestCase allSubclasses collect: [ :c | c package ] as: Set)
		select: [ :p | 
			(p name matchesRegex: '.*Test.*') 
			and: [ (p name beginsWith: 'SUnit') not ] ].