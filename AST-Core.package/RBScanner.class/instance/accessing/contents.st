contents
	| contentsStream |
	contentsStream := WriteStream on: (Array new: 50).
	[ self atEnd ]
		whileFalse: [ contentsStream nextPut: self next ].
	^ contentsStream contents