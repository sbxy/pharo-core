testing
isChunkEnd
	nextChar := readStream next.
	^ nextChar = nil or: [ (nextChar = self terminatorMark and: [ readStream peek ~= self terminatorMark ]) ]