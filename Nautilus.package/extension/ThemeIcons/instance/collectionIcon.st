collectionIcon 
	^ icons
			at: #'collectionIcon'
			ifAbsentPut:[ self collectionIconContents ].