withServerDo: block
	| server |
	server := ZnServer on: self port.
	[ 
		server start.
		self 
			assert: server isRunning & server isListening
			description: ('Failed to start server on port {1}. Is there one already?' format: { server port }).
		block cull: server 
	]
		ensure: [ server stop ]