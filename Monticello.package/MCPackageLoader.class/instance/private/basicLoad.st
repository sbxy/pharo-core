basicLoad
	errorDefinitions := OrderedCollection new.
	[ 
		self handleLoadErrorsDuring: [ self basicLoadDefinitions ]
	] ensure: [ self flushChangesFile ]