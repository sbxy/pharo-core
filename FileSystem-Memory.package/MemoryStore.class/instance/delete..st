public
delete: path
	self 
		nodeAt: path parent
		ifPresent: [ :dict | dict remove: path basename ] 
		ifAbsent: [  ]