pushRemoteTemp: name inVector: tempVectorName

	stream nextPutAll: 'pushRemoteTemp: '.
	name printOn: stream..
	stream nextPutAll: ' inVector: '.
	tempVectorName printOn: stream.