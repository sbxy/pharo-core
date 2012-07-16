accessing
uri
	"Convert my path into a file:// type url. For odd characters use %20 notation."

	self flag: 'TODO: return a real URI object instead of a string'.
	^(String streamContents: [:strm |
		strm nextPutAll: 'file:'.
		self pathSegments do: [:each | strm nextPut: $/; nextPutAll: each encodeForHTTP].
		strm nextPut: $/]) asURI