smallCutIcon
	"Private - Generated method"
	^ icons
			at: #'smallCut'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallCutIconContents readStream) ].