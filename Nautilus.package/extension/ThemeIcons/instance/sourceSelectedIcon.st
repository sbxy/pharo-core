sourceSelectedIcon 
	^ icons
			at: #'sourceSelectedIcon'
			ifAbsentPut:[ self sourceSelectedIconContents ].