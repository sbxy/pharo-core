testAsTimeStamp
	self 
		assert: aDateAndTime asTimeStamp 
		"note that the timestamp string is written in UTC"
		equals: ((TimeStamp readFrom: '2-29-2004 1:33 pm' readStream) translateTo: 2 hours) 