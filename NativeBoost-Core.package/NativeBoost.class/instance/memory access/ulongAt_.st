ulongAt: ulongAddr

	| buf |
	
	buf := ByteArray new: 8.
	
	self ulongAt: ulongAddr into: buf.
	
	^ buf unsignedLongAt: 1 bigEndian: false