uncommentedClassIcon 
	^ icons
			at: #'uncommentedClassIcon'
			ifAbsentPut:[ self uncommentedClassIconContents ].