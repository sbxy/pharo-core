byteCodeUnselectedIcon 
	^ icons
			at: #'byteCodeUnselectedIcon'
			ifAbsentPut:[ self byteCodeUnselectedIconContents ].