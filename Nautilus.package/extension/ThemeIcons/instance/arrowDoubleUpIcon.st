arrowDoubleUpIcon 
	^ icons
			at: #'arrowDoubleUpIcon'
			ifAbsentPut:[ self arrowDoubleUpIconContents ].