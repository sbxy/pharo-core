magnitudeIcon 
	^ icons
			at: #'magnitudeIcon'
			ifAbsentPut:[ self magnitudeIconContents ].