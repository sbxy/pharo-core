smallLockIcon
	"Private - Generated method"
	^icons
			at: #smallLockIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallLockIconContents readStream) ].