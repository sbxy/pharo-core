send: selector

	stream nextPutAll: 'send: '.
	selector printOn: stream.
