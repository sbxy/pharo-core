addVectorTemp: aTemp
	^ tempVector add: (OCVectorTempVariable new
			name: aTemp name;
			vectorName: self tempVectorName;
			index: tempVector size;
			scope: self;
			usage: aTemp usage;
			escaping: aTemp escaping;
			yourself)