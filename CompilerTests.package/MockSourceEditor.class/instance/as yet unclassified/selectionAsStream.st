selectionAsStream

	^ ReadStream
		on: (self text copyFrom: selectionStart to: selectionEnd)