exceptionIcon 
	^ icons
			at: #'exceptionIcon'
			ifAbsentPut:[ self exceptionIconContents ].