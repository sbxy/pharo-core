emptyIcon 
	^ icons
			at: #'emptyIcon'
			ifAbsentPut: [ self blankIconContents ].