flagIcon 
	^ icons
			at: #'flagIcon'
			ifAbsentPut:[ self flagIconContents ].