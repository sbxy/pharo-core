paintIcon
	"Private - Generated method"
	^ icons
			at: #'paint'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self paintIconContents readStream) ].