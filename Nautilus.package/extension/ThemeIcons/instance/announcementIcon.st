announcementIcon 
	^ icons
			at: #'announcementIcon'
			ifAbsentPut:[ self announcementIconContents ].