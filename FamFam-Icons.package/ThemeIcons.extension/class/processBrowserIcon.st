*famfam-icons-accessing
processBrowserIcon
	"Private - Generated method"
	^ icons
			at: #'processBrowserIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self processBrowserIconContents readStream) ].