smallInfoIcon
	"Private - Generated method"
	^icons
			at: #smallInfoIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallInfoIconContents readStream) ].