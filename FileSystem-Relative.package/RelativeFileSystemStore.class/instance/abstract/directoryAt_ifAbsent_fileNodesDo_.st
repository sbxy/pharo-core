directoryAt: aPath ifAbsent: absentBlock fileNodesDo: aBlock
	self store
		directoryAt: (self resolvePath: aPath) 
		ifAbsent: absentBlock 
		fileNodesDo: aBlock