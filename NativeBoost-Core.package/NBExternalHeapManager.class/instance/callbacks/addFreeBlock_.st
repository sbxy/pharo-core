addFreeBlock: aMemoryBlock

	"Check if free block covers entire page.
	and if it is, then free the page"
	
	(self checkForFreePage: aMemoryBlock) ifFalse: [
		freeBlocks add: aMemoryBlock
		]
