= anObject 
	super = anObject ifFalse: [^false].
	self isForByteArray = anObject isForByteArray ifFalse: [^false].
	self contents size = anObject contents size ifFalse: [^false].
	1 to: self contents size
		do: [:i | (self contents at: i) = (anObject contents at: i) ifFalse: [^false]].
	^true