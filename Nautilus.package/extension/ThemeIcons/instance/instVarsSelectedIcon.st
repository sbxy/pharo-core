instVarsSelectedIcon 
	^ icons
			at: #'instVarsSelectedIcon'
			ifAbsentPut:[ self instVarsSelectedIconContents ].