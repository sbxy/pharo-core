smallForwardIcon
	"Private - Generated method"
	^ icons
			at: #'smallForward'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallForwardIconContents readStream) ].