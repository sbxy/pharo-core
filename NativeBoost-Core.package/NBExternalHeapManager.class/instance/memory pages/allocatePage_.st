allocatePage: requestedSize

	| bytesToAllocate addr page |
	
	bytesToAllocate := self alignToPageSize: (self minimumPageSize max: requestedSize).

	addr := self primAllocatePage: bytesToAllocate.
	
	page := NBMemoryPage address: addr length: bytesToAllocate.
	pages at: addr put: page.
	^ page
 