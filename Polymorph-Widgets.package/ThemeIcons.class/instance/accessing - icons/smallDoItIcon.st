smallDoItIcon
	"Private - Generated method"
	^ icons
			at: #'smallDoIt'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallDoItIconContents readStream) ].