topIcon 
	^ icons
			at: #'topIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self topIconContents readStream) ].