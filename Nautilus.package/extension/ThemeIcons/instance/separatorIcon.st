separatorIcon 
	^ icons
			at: #'separatorIcon'
			ifAbsentPut:[ self separatorIconContents ].