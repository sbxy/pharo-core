smallCopyIcon
	"Private - Generated method"
	^ icons
			at: #'smallCopy'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallCopyIconContents readStream) ].