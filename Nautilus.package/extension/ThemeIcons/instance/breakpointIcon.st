breakpointIcon 
	^ icons
			at: #'breakpointIcon'
			ifAbsentPut:[ self breakpointIconContents ].