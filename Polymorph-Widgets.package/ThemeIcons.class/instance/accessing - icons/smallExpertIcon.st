smallExpertIcon
	"Private - Generated method"
	^ icons
			at: #'smallExpert'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallExpertIconContents readStream) ].