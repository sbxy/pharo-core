bookIcon 
	^ icons
			at: #'bookIcon'
			ifAbsentPut:[ self bookIconContents ].