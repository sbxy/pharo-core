testStructCopy

	| struct addr struct2 |

	[
	struct := NBTestStructure new.
	  
		struct byte: 5;
		long: 10;
		short: 20.
		
	addr := NativeBoost allocate: NBTestStructure instanceSize.
	
	NativeBoost memCopy: struct address to: addr size:  NBTestStructure instanceSize.
	struct2 := NBTestStructure fromPointer: addr.
		  

	self assert: struct2 byte = 5.
	self assert: struct2 long = 10.
	self assert: struct2 short = 20.
	
	] ensure: [
		NativeBoost free: addr ]
