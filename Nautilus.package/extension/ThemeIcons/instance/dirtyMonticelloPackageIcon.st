dirtyMonticelloPackageIcon 
	^ icons
			at: #'dirtyMonticelloPackageIcon'
			ifAbsentPut:[ self dirtyMonticelloPackageIconContents ].