smallLeftFlushIcon
	"Private - Generated method"
	^ icons
			at: #'smallLeftFlush'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallLeftFlushIconContents readStream) ].