emptyPackageIcon 
	^ icons
			at: #'emptyPackageIcon'
			ifAbsentPut:[ self emptyPackageIconContents ].