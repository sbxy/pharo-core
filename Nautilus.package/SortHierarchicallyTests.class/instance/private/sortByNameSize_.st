sortByNameSize: collection

	^collection asSortedCollection: [:x :y | x element name size < y element name size]