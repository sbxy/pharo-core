smallUpdateIcon
	"Private - Generated method"
	^ icons
			at: #'smallUpdate'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallUpdateIconContents readStream) ].