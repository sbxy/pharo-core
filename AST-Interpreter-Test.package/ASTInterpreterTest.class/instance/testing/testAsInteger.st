testAsInteger

	self assert: (self interpret: '#123 asInteger') equals: 123.
	self assert: (self interpret: '(String withAll: #($1 $2 $3)) asInteger') equals: 123.
	