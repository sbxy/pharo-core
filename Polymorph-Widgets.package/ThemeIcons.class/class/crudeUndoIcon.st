deprecated
crudeUndoIcon
	"Private - Generated method"
	self deprecated: 'Do not use anymore' on: 'Pharo20' in: 'May 15, 2012'.
	^ icons
			at: #'crudeUndo'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self crudeUndoIconContents readStream) ].