tinyMenuIcon
	"Private - Generated method"
	^ icons
			at: #'tinyMenu'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self tinyMenuIconContents readStream) ].