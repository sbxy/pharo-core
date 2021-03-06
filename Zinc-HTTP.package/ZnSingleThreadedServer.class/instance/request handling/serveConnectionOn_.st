serveConnectionOn: listeningSocket
	"We wait up to acceptWaitTimeout seconds for an incoming connection.
	If we get one we wrap it in a SocketStream and #executeOneRequestResponseOn: on it.
	We do not fork a worker thread/process but stay in the current one for just one request/response cycle."

	| stream socket |
	socket := listeningSocket waitForAcceptFor: self acceptWaitTimeout.
	socket ifNil: [ ^ self noteAcceptWaitTimedOut ].
	stream := self socketStreamOn: socket.
	[ 
	[ self executeOneRequestResponseOn: stream ]
		ensure: [ 
			self log debug: 'Closing stream'.
			stream close ] ]
		ifCurtailed: [ 
			self log debug: 'Destroying socket'.
			socket destroy ]