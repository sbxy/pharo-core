send: selector toSuperOf: behavior

	stream nextPutAll: 'send: '.
	selector printOn: stream.
	stream nextPutAll: ' toSuperOf: '.
	behavior printOn: stream.
