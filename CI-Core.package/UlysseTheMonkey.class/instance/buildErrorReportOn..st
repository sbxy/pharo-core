printing
buildErrorReportOn: stream

	errors isEmpty ifTrue: [ ^ self ].
	
	stream nextPutAll: 'Monkey went bananas:'; lf.
	
	errors 
		do: [:e | 
			stream nextPutAll: '--------------------'; lf.
			stream nextPutAll: e ]
		separatedBy: [ stream lf lf]
			