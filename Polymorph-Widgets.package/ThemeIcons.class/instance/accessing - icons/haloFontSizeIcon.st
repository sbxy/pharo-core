haloFontSizeIcon
	"Private - Generated method"
	^ icons
			at: #'haloFontSize'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloFontSizeIconContents readStream) ].