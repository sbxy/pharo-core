fullscreenIcon
	"Private - Generated method"
	^ icons
			at: #fullscreen
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self fullscreenIconContents readStream) ].