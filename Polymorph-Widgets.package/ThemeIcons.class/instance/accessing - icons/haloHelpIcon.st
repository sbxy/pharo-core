haloHelpIcon
	"Private - Generated method"
	^ icons
			at: #'haloHelp'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloHelpIconContents readStream) ].