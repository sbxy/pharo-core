run
	| result |
	result := self classForTestResult new.
	[ self run: result ]
		ensure: [ self classForTestResource resetResources: self resources ].
	^ result