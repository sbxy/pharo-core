testSizeInMemoryOfByteObjects
	"Byte objects should be padded to words"
	self assert: 'a' sizeInMemory equals: 8.
	self assert: 'abcd' sizeInMemory equals: 8.
	self assert: '' sizeInMemory equals: 4.
	self assert: 'abcde' sizeInMemory equals: 12.
	self assert: 'abcdefghi' sizeInMemory equals: 16.