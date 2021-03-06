readOnlyFileNamed:  aString
	"Here is the way to use DataStream and ReferenceStream:
	
	|rr|
	rr := ReferenceStream fileNamed: 'test.obj'.
	rr nextPut: 'Zork'.
	rr close.
"

	| strm |
	strm := self on: (FileStream readOnlyFileNamed:   aString).		"will be binary"
	strm byteStream setFileTypeToObject.
		"Type and Creator not to be text, so can attach correctly to an email msg"
	^ strm