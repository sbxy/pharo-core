statementComments
	| statementComments |
	statementComments := OrderedCollection withAll: self comments.
	self children do: [:each | statementComments addAll: each statementComments].
	^statementComments asSortedCollection: [:a :b | a first < b first]