testPrintOn

	| expected stream |
	expected := '23 January 2004'.
	stream := ReadWriteStream on: ''.
	january23rd2004 printOn: stream.
	self assert: stream contents equals: expected.